(define n (read))
(define (iter n result)
  (define a (read))
  (define b (read))
  (define possible-cake (min result (quotient b a)))
  (cond ((> n 1)
         (iter (- n 1)
               possible-cake))
        (else possible-cake)))
(display (iter n 100000))
(newline)
