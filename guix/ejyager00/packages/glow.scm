(define-module (ejyager00 packages glow)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix build-system go)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages golang-build)
  #:use-module (gnu packages golang-xyz))

(define-public go-github-com-caarlos0-env-v11
  (package
    (name "go-github-com-caarlos0-env-v11")
    (version "11.3.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/caarlos0/env")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1q30mdayk7k2lv12cbmbg0sww1ygl6g8q8jkb0f52gkvvmb4wm4n"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/caarlos0/env/v11"))
    (home-page "https://github.com/caarlos0/env")
    (synopsis "Library to parse environment variables into structs")
    (description
     "@code{env} is a simple, zero-dependencies library to parse environment
variables into structs.")
    (license license:expat)))

(define-public go-github-com-charmbracelet-x-editor
  (package
    (name "go-github-com-charmbracelet-x-editor")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/charmbracelet/x")
             (commit (go-version->git-ref version #:subdir "editor"))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dl09xqvffrv7hxhvq68kdrvkn4qgdxkic5c4sjc6c8xzs9j7bj9"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/charmbracelet/x/editor"
      #:unpack-path "github.com/charmbracelet/x"))
    (home-page "https://github.com/charmbracelet/x")
    (synopsis "Open files in an external editor from Go")
    (description
     "This package provides functionality for opening files in external
editors from a Go program, honoring the @code{VISUAL} and @code{EDITOR}
environment variables.")
    (license license:expat)))

(define-public go-github-com-muesli-gitcha
  (package
    (name "go-github-com-muesli-gitcha")
    (version "0.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/muesli/gitcha")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0726w3cg4c22jgh82dii6ygmwm5wsii660wra5xhgjmbqrr8i4pn"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/muesli/gitcha"
      ;; Requires a real .git directory, which is not present in the
      ;; build sandbox's source checkout.
      #:test-flags #~(list "-skip" "TestGitRepoForPath")))
    (propagated-inputs (list go-github-com-sabhiram-go-gitignore))
    (home-page "https://github.com/muesli/gitcha")
    (synopsis "Go helpers for working with Git repositories")
    (description
     "Gitcha provides Go helpers to locate Git repository directories, find
files while respecting @file{.gitignore} patterns, and check whether a path
is part of a Git repository.")
    (license license:expat)))

(define-public go-github-com-muesli-go-app-paths
  (package
    (name "go-github-com-muesli-go-app-paths")
    (version "0.2.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/muesli/go-app-paths")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19g7fzyqg8d0nkb50h1rjk3q87v0yd1g9mh55ywgw85m5cji3w69"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/muesli/go-app-paths"
      ;; These expect XDG directories to exist on the filesystem, which is
      ;; not the case in the build sandbox.
      #:test-flags #~(list "-skip" "TestConfigLookups|TestDataLookups")))
    (propagated-inputs (list go-github-com-mitchellh-go-homedir))
    (home-page "https://github.com/muesli/go-app-paths")
    (synopsis "Platform-specific application paths")
    (description
     "This package lets you retrieve platform-specific paths, such as
directories for app data, cache, config, and logs.  It is fully compliant
with the XDG Base Directory Specification on Unix, and also provides
implementations for @code{macOS} and Windows.")
    (license license:expat)))

(define-public glow
  (package
    (name "glow")
    (version "2.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/charmbracelet/glow")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ibdg65nk14pfi3bm7h29c2ybari98fqyxm1kw7y6i35nq6y2kgh"))))
    (build-system go-build-system)
    (arguments
     (list
      #:install-source? #f
      ;; Needed to include (rather than symlink) the transitive chroma-v2
      ;; style/lexer XML assets that glamour embeds via go:embed; Go
      ;; rejects symlinked embed targets as "irregular files".
      #:embed-files #~(list ".*\\.xml")
      #:import-path "github.com/charmbracelet/glow/v2"
      #:phases
      #~(modify-phases %standard-phases
          ;; The "/v2" import path suffix makes Go name the installed
          ;; binary "v2"; rename it to the expected "glow".
          (add-after 'install 'rename-binary
            (lambda _
              (with-directory-excursion #$output
                (rename-file "bin/v2" "bin/glow")))))))
    (native-inputs
     (list go-github-com-atotto-clipboard
           go-github-com-caarlos0-env-v11
           go-github-com-charmbracelet-bubbles
           go-github-com-charmbracelet-bubbletea
           go-github-com-charmbracelet-glamour
           go-github-com-charmbracelet-lipgloss
           go-github-com-charmbracelet-log
           go-github-com-charmbracelet-x-editor
           go-github-com-dustin-go-humanize
           go-github-com-fsnotify-fsnotify
           go-github-com-mattn-go-runewidth
           go-github-com-mitchellh-go-homedir
           go-github-com-muesli-gitcha
           go-github-com-muesli-go-app-paths
           go-github-com-muesli-mango-cobra
           go-github-com-muesli-reflow
           go-github-com-muesli-roff
           go-github-com-muesli-termenv
           go-github-com-sahilm-fuzzy
           go-github-com-spf13-cobra
           go-github-com-spf13-viper
           go-golang-org-x-sys
           go-golang-org-x-term
           go-golang-org-x-text
           go-mvdan-cc-sh-v3))
    (home-page "https://github.com/charmbracelet/glow")
    (synopsis "Terminal-based markdown reader")
    (description
     "Glow is a terminal-based markdown reader.  It renders local files,
piped input, or documents fetched from GitHub, GitLab, or a Glow-compatible
content server, and provides a TUI file browser with a built-in pager for
navigating a directory of documents.")
    (license license:expat)))
