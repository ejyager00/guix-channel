(define-module (ejyager00 packages speech)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix build-system pyproject)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages check)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages speech))

(define-public python-dlinfo
  (package
    (name "python-dlinfo")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "dlinfo" version))
       (sha256
        (base32 "05ry8csn47x4f4z6mjijfl2qkphbrk1v37nw9ihbq08xyl2br8l8"))))
    (build-system pyproject-build-system)
    (native-inputs
     (list python-pytest python-setuptools python-setuptools-scm python-wheel))
    (home-page "https://github.com/fphammerle/python-dlinfo")
    (synopsis "Python wrapper for libc's dlinfo")
    (description
     "This package wraps the C library's @code{dlinfo} function, which reports
information about a dynamically loaded object such as the path it was loaded
from.")
    (license license:expat)))

(define-public python-phonemizer
  (package
    (name "python-phonemizer")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "phonemizer" version))
       (sha256
        (base32 "1ssiyb8b6rcnmvc556cjc6fssq3j0ax7jqs6q0g6gg2h1jc32cp1"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      ;; Only the espeak backend is wired up; festival, mbrola and the
      ;; optional segments backend are not packaged (test_punctuation imports
      ;; all of them).
      #:test-flags
      #~(list "test/test_espeak.py" "test/test_espeak_wrapper.py"
              "test/test_separator.py"
              "test/test_utils.py")
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'use-guix-espeak-ng
            ;; ctypes.util.find_library cannot see store paths, so make the
            ;; default library our espeak-ng.  PHONEMIZER_ESPEAK_LIBRARY and
            ;; set_library() still take precedence.
            (lambda* (#:key inputs #:allow-other-keys)
              (substitute* "phonemizer/backend/espeak/wrapper.py"
                (("_find_library\\(\"espeak-ng\"\\)")
                 (format #f "~s"
                         (search-input-file inputs
                                            "lib/libespeak-ng.so")))))))))
    (native-inputs (list python-pytest python-setuptools python-wheel))
    (inputs (list espeak-ng))
    (propagated-inputs
     (list python-attrs python-dlinfo python-joblib python-typing-extensions))
    (home-page "https://github.com/bootphon/phonemizer")
    (synopsis "Text to phones transcription library")
    (description
     "Phonemizer converts text into phonetic transcriptions for several
languages.  This package enables its espeak-ng backend, which Kokoro text to
speech uses for grapheme-to-phoneme conversion.")
    (license license:gpl3+)))

(define-public python-kokoro-onnx
  (package
    (name "python-kokoro-onnx")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "kokoro_onnx" version))
       (sha256
        (base32 "0daf54gbpn0hjjq4rxfs803j9bgxmslrk6d9i08gfx9psmnvdgbv"))))
    (build-system pyproject-build-system)
    (arguments
     (list
      #:tests? #f                       ;no test suite in the sdist
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'use-guix-espeak-ng
            ;; espeakng-loader only ships a bundled prebuilt libespeak-ng;
            ;; point the defaults at Guix's espeak-ng instead.  An explicit
            ;; EspeakConfig still overrides them.
            (lambda* (#:key inputs #:allow-other-keys)
              (let ((lib (search-input-file inputs "lib/libespeak-ng.so"))
                    (data (search-input-directory inputs
                                                  "share/espeak-ng-data")))
                (substitute* "src/kokoro_onnx/tokenizer.py"
                  (("^import espeakng_loader\n") "")
                  (("espeakng_loader\\.get_data_path\\(\\)")
                   (format #f "~s" data))
                  (("espeakng_loader\\.get_library_path\\(\\)")
                   (format #f "~s" lib)))
                (substitute* "pyproject.toml"
                  (("^ *\"espeakng-loader[^\"]*\",\n") ""))))))))
    (native-inputs (list python-hatchling))
    (inputs (list espeak-ng))
    (propagated-inputs
     (list `(,onnxruntime "python") python-numpy python-phonemizer))
    (home-page "https://github.com/thewh1teagle/kokoro-onnx")
    (synopsis "Kokoro text to speech with ONNX Runtime")
    (description
     "This package runs the Kokoro-82M text to speech model with ONNX Runtime.
Model and voice files are not included; they are downloaded separately.")
    (license license:expat)))
