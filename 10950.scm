(define count (read))
(define (add-iter count)
  (cond ((> count 0)
         (display (+ (read) (read)))
         (newline)
         (add-iter (- count 1)))))
(add-iter count)
