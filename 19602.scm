(define s (read))
(define m (read))
(define l (read))
(cond ((>= (+ s (* 2 m) (* 3 l)) 10)
       (display "happy\n"))
      (else (display "sad\n")))
