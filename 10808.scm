(define alpabet (make-vector 26 0))
(define (alpabet-set a)
  (vector-set! alpabet a (+ 1 (vector-ref alpabet a))))
(define (print-vector count)
  (if (< count 26)
    (begin (display (vector-ref alpabet count))
           (display " ")
           (print-vector (+ count 1)))
    (newline)))
(define (iter)
  (define a (- (char->integer (read-char)) 97))
  (if (or (< a 0) (> a 25))
    (print-vector 0)
    (begin (alpabet-set a)
           (iter))))
(iter)
