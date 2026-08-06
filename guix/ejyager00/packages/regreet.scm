;;; SPDX-License-Identifier: GPL-3.0-or-later

(define-module (ejyager00 packages regreet)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (saayix packages wm))

;; ReGreet bakes SESSION_DIRS, STATE_DIR, and LOG_DIR into the binary at
;; compile time via Rust's option_env!, defaulting to FHS paths
;; (/usr/share/{x,wayland-}sessions, /var/lib/regreet, /var/log/regreet)
;; that don't exist on Guix System -- there is no runtime override for
;; SESSION_DIRS, so without this the greeter finds zero sessions to log
;; into.  STATE_DIR/LOG_DIR are pointed at the greeter's scratch HOME
;; (set up by the sway wrapper in sys-config.scm) since the "greeter"
;; system account has no writable home or /var directories of its own.
;;
;; regreet-patches/{templates,component}.rs replace src/gui/{templates,
;; component}.rs wholesale (based on upstream commit a12653e).  Neither
;; the static greeting message nor the top-of-screen clock overlay are
;; runtime-configurable, and merging them into one live-clock widget
;; (in the greeting message's grid slot) requires touching the widget
;; tree itself.  While in there, the InfoBar's wrapping Frame -- which
;; stays visible (just collapsed) once armed, showing as a stray line
;; above the reboot/poweroff buttons -- gets an explicit "info-frame"
;; CSS class so it can be styled away without relying on fragile
;; structural selectors.
(define-public regreet-guix
  (package
    (inherit regreet)
    (name "regreet-guix")
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'install-custom-ui
            (lambda _
              (copy-file #$(local-file "regreet-patches/templates.rs")
                         "src/gui/templates.rs")
              (copy-file #$(local-file "regreet-patches/component.rs")
                         "src/gui/component.rs")))
          (add-before 'build 'set-guix-paths
            (lambda _
              (setenv "SESSION_DIRS"
                      (string-append
                       "/run/current-system/profile/share/wayland-sessions"
                       ":/run/current-system/profile/share/xsessions"))
              (setenv "STATE_DIR" "/tmp/.greeter-home/state")
              (setenv "LOG_DIR" "/tmp/.greeter-home/log"))))))))
