(define n (read))
(define (iter n)
  (cond ((> n 0)
         (display "long ")
         (iter (- n 1)))))
(iter (quotient n 4))
(display "int\n")
