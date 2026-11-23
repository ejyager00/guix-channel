(define-module (ejyager00 packages claude)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix build-system pyproject)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python-xyz))

(define-public ccburn
  (package
    (name "ccburn")
    (version "0.8.0")
    (source
     ;; The PyPI sdist omits tests/conftest.py, so fetch the tag.
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/JuanjoFuchs/ccburn")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1gadc8pd3j8agwcsashyn5j47m707z0z1jc5q598a13b0v5ipa95"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'drop-typer-all-extra
            ;; Newer typer dropped the "all" extra (rich is a hard
            ;; dependency now), so sanity-check rejects typer[all].
            (lambda _
              (substitute* "pyproject.toml"
                (("typer\\[all\\]") "typer")))))))
    (native-inputs (list python-pytest python-setuptools))
    ;; ccburn calls plotext's clear_figure/clear_data/clear_color, which
    ;; plotext 6 removed; Guix's python-plotext is 5.x.
    (propagated-inputs
     (list python-certifi python-httpx python-plotext python-rich
           python-typer))
    (home-page "https://github.com/JuanjoFuchs/ccburn")
    (synopsis "Terminal burn-up charts for Claude Code usage limits")
    (description
     "ccburn shows how much of the Claude Code session and weekly usage
limits has been used, as a live terminal burn-up chart, a one-line summary for
status bars, or JSON.  It reads the OAuth credentials Claude Code stores in
@file{~/.claude/.credentials.json} and queries Anthropic's usage endpoint.")
    (license license:expat)))
