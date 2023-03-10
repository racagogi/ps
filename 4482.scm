(define (tetrahedral n)
  (/ (* n (+ n 1) (+ n 2)) 6))
(define (print-ans n)
  (define len (read))
  (print n ": " len " " (tetrahedral len)))
(define count (read))
(define (iter n)
  (if (<= n count)
    (begin
      (print-ans n)
      (iter (+ n 1)))))
(iter 1)
