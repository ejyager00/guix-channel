(define-module (ejyager00 packages editors)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (nonguix build-system binary)
  #:use-module (gnu packages base)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages compression))

(define-public fresh-editor
  (package
    (name "fresh-editor")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/sinelaw/fresh/releases/download/v"
                           version "/fresh-editor-x86_64-unknown-linux-gnu.tar.xz"))
       (file-name (string-append name "-" version ".tar.xz"))
       (sha256 (base32 "0a9b6c1mgj8wmidx5cqfyyw0xghlz9aah8rsbvga4h4hlbsiijki"))))
    (build-system binary-build-system)
    (supported-systems '("x86_64-linux"))
    (arguments
     (list
      #:patchelf-plan
      #~'(("fresh" ("glibc" "gcc" "xz")))
      #:install-plan
      #~'(("fresh" "bin/"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'wrap
            (lambda* (#:key inputs #:allow-other-keys)
              (wrap-program (string-append #$output "/bin/fresh")
                `("PATH" ":" prefix
                  (,(string-append #$(this-package-input "git") "/bin")))))))))
    (inputs (list `(,gcc "lib") glibc git xz))
    (home-page "https://getfresh.dev")
    (synopsis "Terminal-based IDE and text editor")
    (description
     "Fresh is a terminal text editor with VS Code-style keybindings, mouse
support, a command palette, LSP integration, and a TypeScript plugin system.
This package repackages the upstream prebuilt binary.")
    (license license:gpl2)))
