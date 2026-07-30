(define-module (ejyager00 home template)
  #:use-module (guix gexp)
  #:export (substituted-file))

(define (substituted-file name template substitutions)
  "Return a file-like object NAME holding the contents of TEMPLATE (a file-like
object) with every occurrence of \"@{KEY}\" replaced by its value in
SUBSTITUTIONS, an alist mapping strings to strings or file-like objects.
Substitution runs in a build process, so TEMPLATE and each file-like value are
inputs of the resulting derivation.  An unsubstituted @{...} placeholder is a
build error."
  (computed-file
   name
   (with-imported-modules '((guix build utils))
     #~(begin
         (use-modules (guix build utils)
                      (ice-9 textual-ports)
                      (ice-9 regex)
                      (srfi srfi-1))
         (let* ((subs (list #$@(map (lambda (pair)
                                      #~(cons #$(string-append "@{" (car pair) "}")
                                              #$(cdr pair)))
                                    substitutions)))
                (text (call-with-input-file #$template get-string-all))
                (out  (fold (lambda (pair acc)
                              (string-replace-substring acc (car pair) (cdr pair)))
                            text subs)))
           (let ((stray (string-match "@\\{[A-Za-z0-9_.+-]+\\}" out)))
             (when stray
               (error "substituted-file: unsubstituted placeholder"
                      #$name (match:substring stray))))
           (call-with-output-file #$output
             (lambda (port) (display out port))))))))