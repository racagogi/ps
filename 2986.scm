(define n (read))
(define (iter sqrtn i)
  (if (> i sqrtn)
    (print (- n 1))
    (if (= 0 (modulo n i))
      (print (- n (quotient n i)))
      (iter sqrtn (+ i 2)))))
(if (= 0 (modulo n 2))
  (print (quotient n 2))
  (iter (sqrt n) 3))
