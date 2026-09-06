;;; SPDX-License-Identifier: GPL-3.0-or-later
;;; Adapted from (nongnu packages chrome) in nonguix.

(define-module (ejyager00 packages brave)
  #:use-module (gnu packages base)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages fonts)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages image)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pciutils)
  #:use-module (gnu packages photo)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages video)
  #:use-module (gnu packages wget)
  #:use-module (gnu packages xiph)
  #:use-module (gnu packages xorg)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (nonguix build-system chromium-binary)
  #:use-module (nonguix licenses))

(define-public brave-origin-bin
  (package
    (name "brave-origin-bin")
    (version "1.94.121")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://github.com/brave/brave-browser/releases/download/v"
             version "/brave-origin_" version "_amd64.deb"))
       (sha256
        (base32 "158lddmhr66f9vhk7lzyi90w92k17dixdc0rbhsm8fa101gyqxhg"))))
    (build-system chromium-binary-build-system)
    (arguments
     (list
      ;; Nonfree binary: do not offer it as a substitute.
      #:substitutable? #f
      #:wrapper-plan
      #~(let ((path "opt/brave.com/brave-origin/"))
          (map (lambda (file) (string-append path file))
               '("brave"
                 "chrome-management-service"
                 "chrome-sandbox"
                 "chrome_crashpad_handler"
                 "libqt5_shim.so"
                 "libqt6_shim.so"
                 "libvk_swiftshader.so"
                 "libvulkan.so.1")))
      #:install-plan
      #~'(("opt/" "/share")
          ("usr/share/" "/share"))
      #:phases
      #~(modify-phases %standard-phases
          (add-before 'install 'patch-assets
            (lambda _
              (let* ((bin (string-append #$output "/bin"))
                     (exe (string-append bin "/brave-origin"))
                     (old-exe "/opt/brave.com/brave-origin/brave-origin"))
                ;; Let our own wrapper own CHROME_WRAPPER.
                (substitute* "opt/brave.com/brave-origin/brave-origin"
                  (("CHROME_WRAPPER") "WRAPPER"))
                ;; Deb postinst normally symlinks /usr/bin/brave-origin-stable.
                (substitute* '("usr/share/applications/brave-origin.desktop"
                               "usr/share/applications/com.brave.Origin.desktop")
                  (("/usr/bin/brave-origin-stable") exe))
                (substitute* "usr/share/gnome-control-center/default-apps/brave-origin.xml"
                  ((old-exe) exe)))))
          (add-after 'install 'install-icons
            (lambda _
              (define (format-icon-size name)
                ;; "product_logo_128.png" -> "128"
                (car (string-split
                      (string-drop-right (string-drop name 13) 4)
                      #\_)))
              (let ((icons (string-append #$output "/share/icons/hicolor"))
                    (share (string-append #$output "/share/brave.com/brave-origin")))
                (for-each
                 (lambda (icon)
                   (let* ((size (format-icon-size (basename icon)))
                          (target (string-append icons "/" size "x" size
                                                 "/apps/brave-origin.png")))
                     (mkdir-p (dirname target))
                     (rename-file icon target)))
                 (find-files share "product_logo_.*\\.png")))))
          (add-before 'install-wrapper 'install-exe
            (lambda _
              (let* ((bin (string-append #$output "/bin"))
                     (exe (string-append bin "/brave-origin"))
                     (target (string-append #$output
                                            "/share/brave.com/brave-origin/brave-origin")))
                (mkdir-p bin)
                (symlink target exe)
                (wrap-program exe
                  '("CHROME_WRAPPER" = ("brave-origin")))))))))
    (inputs
     (list bzip2
           curl
           flac
           font-liberation
           gdk-pixbuf
           gtk
           harfbuzz
           libexif
           libpng
           libva
           libxscrnsaver
           ;; Guix's mesa is built without libglvnd, so it provides libEGL.so.1
           ;; itself.  Listing libglvnd here (as nonguix's chrome.scm does)
           ;; shadows it with glvnd's dispatch library, which finds no vendor
           ;; JSON and fails eglInitialize -> no GPU rasterization, no WebGL.
           mesa
           opus
           pciutils
           pipewire
           qtbase-5
           qtbase
           snappy
           util-linux
           xdg-utils
           wget))
    (supported-systems '("x86_64-linux"))
    (synopsis "Brave Origin web browser (prebuilt)")
    (description
     "Brave Origin is a build of the Brave browser with Brave's own services,
telemetry, rewards, wallet and AI features removed.  This package installs the
official upstream Linux binary.")
    (home-page "https://brave.com/origin/")
    (license (nonfree "https://brave.com/terms-of-use/"))))