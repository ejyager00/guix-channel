(define-module (ejyager00 packages nb)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages version-control))

(define-public nb
  (package
    (name "nb")
    (version "7.25.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/xwmx/nb")
             (commit version)))
       (sha256 (base32 "0g2bvrcl48y164jyg49kqm7b0hc7k1657wvmwqaqclipcbalphyd"))))
    (build-system copy-build-system)
    (arguments
     (list #:install-plan
           #~(list '("nb" "bin/")
                    '("bin/bookmark" "bin/")
                    '("etc/nb-completion.bash" "share/bash-completion/completions/nb")
                    '("etc/nb-completion.zsh" "share/zsh/site-functions/_nb")
                    '("etc/nb-completion.fish" "share/fish/vendor_completions.d/nb.fish"))))
    (propagated-inputs (list git))
    (home-page "https://xwmx.github.io/nb/")
    (synopsis "Plain-text note-taking, bookmarking, and archiving CLI")
    (description "nb is a command-line and local-web note-taking, bookmarking,
archiving, and knowledge-base application with linking, tagging, filtering,
search, and Git-backed versioning and syncing, in a single portable script.")
    (license license:agpl3+)))