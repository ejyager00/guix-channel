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
(define-public regreet-guix
  (package
    (inherit regreet)
    (name "regreet-guix")
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'build 'set-guix-paths
            (lambda _
              (setenv "SESSION_DIRS"
                      (string-append
                       "/run/current-system/profile/share/wayland-sessions"
                       ":/run/current-system/profile/share/xsessions"))
              (setenv "STATE_DIR" "/tmp/.greeter-home/state")
              (setenv "LOG_DIR" "/tmp/.greeter-home/log"))))))))
