(define (iter n)
  (if (> n 0)
    (begin (display "Case ")
           (display (- counter n))
           (display ": Sorting... done!\n")
           (iter (+ n 1)))))
(iter 1)
