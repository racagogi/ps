(define n (read))
(define (print-num start n)
  (cond ((<= start n) (display start)
                      (newline)
                      (print-num (+ start 1) n))))
(print-num 1 n)
