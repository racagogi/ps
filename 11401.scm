(define n (read))
(define k (read))

(define (factorial n)
  (cond ((<= n 1) 1)
        (else
          (if (= (modulo n 2) 0)
           (* (* (2time (quotient n 2))
                 (factorial (quotient n 2)))
              (factorial-odd (quotient n 2)))
           (* n (factorial (- n 1)))))))
(define (factorial-odd n)
  (if (<= n 1)
      1
      (* (- (* 2 n) 1)
         (factorial-odd (- n 1)))))
(define (squrt n) (* n n))
(define (2time n)
  (cond ((<= n 1) 2)
        (else (if (= (modulo n 2) 0)
                  (squrt (2time (quotient n 2)))
                  (* 2 (2time (- n 1)))))))

(print (modulo (quotient (factorial n) (* (factorial k) (factorial (- n k)))) 1000000007))
