(define-module (ejyager00 packages editors)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages tls)
  #:use-module (guix gexp))

(define-public fresh-editor
  (package
    (name "fresh-editor")
    (version "0.4.5")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/sinelaw/fresh")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256 (base32 "158lvsf5kki92s3h8hbkyfzw9ca7ikaskyrhgnwdccgws77d7k84"))))
    (build-system cargo-build-system)
    (arguments
     (list #:install-source? #f
           #:tests? #f
           ;; Workspace: adjust to the actual binary crate path.
           #:cargo-install-paths ''("crates/fresh")
           #:phases
           #~(modify-phases %standard-phases
               (add-before 'build 'relax-msrv
                 (lambda _
                   (substitute* (find-files "." "^Cargo\\.toml$")
                     (("^rust-version = .*") "")))))))
    (inputs
     (cargo-inputs 'fresh-editor
                   #:module '(ejyager00 packages rust-crates)))
    (native-inputs (list pkg-config))
    (home-page "https://getfresh.dev")
    (synopsis "Terminal-based IDE and text editor")
    (description
     "Fresh is a terminal text editor with VS Code-style keybindings, mouse support, a command palette, LSP integration, and a TypeScript plugin system.")
    (license license:gpl2)))
