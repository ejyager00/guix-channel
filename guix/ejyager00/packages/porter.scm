(define-module (ejyager00 packages porter)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config))

(define-public porter
  (let ((commit "3d6fd64f3f5eb5ec1c11ac608cb0a4dacbd0fb33")
        (revision "0"))
    (package
      (name "porter")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/ejyager00/porter")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1y1351fccq62biwy0lhas72xld0r6bkyi0hqny0a5vha4l7cz3qi"))))
      (build-system meson-build-system)
      ;; The end-to-end tests (scripts/*-tests.sh) need a headless sway;
      ;; meson defines no tests of its own.
      (native-inputs (list `(,glib "bin") pkg-config))
      (inputs (list glib gtk gtk4-layer-shell json-glib linux-pam))
      (home-page "https://github.com/ejyager00/porter")
      (synopsis "Greetd greeter and Wayland screen locker with one look")
      (description
       "Porter is a greetd greeter and a Wayland screen locker that share one
GTK 4 interface: a background on every monitor, a clock and date, and a
translucent login card on a chosen monitor.  @command{porter greet} runs under
a layer-shell compositor such as Sway and starts the chosen Wayland session
through the user's login shell; @command{porter lock} locks the session with
the ext-session-lock protocol and checks the password with PAM.  Both offer
sleep, restart and shut down through logind.")
      (license license:gpl3+))))
