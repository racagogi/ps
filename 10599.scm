(define (iter)
  (define a (read))
  (define b (read))
  (define c (read))
  (define d (read))
  (if (not (= 0 a b c d))
    (begin (print (- c b) " " (- d a))
           (iter))))
(iter)
