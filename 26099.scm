(define n (read))
(define dp (make-vector 5 9999))
(vector-set! dp 3 1)
(vector-set! dp 5 1)
(define (sugar-eval k)
  (if (<= k n)
    (begin (vector-set! dp k (min (+ 1 (vector-ref dp (- k 3)))
                                  (+ 1 (vector-ref dp (- k 5)))))
           (sugar-eval (+ k 1)))))

(sugar-eval 6)
(if (>= (vector-ref dp n) 9999)
  (display -1)
  (display (vector-ref dp n)))
(newline)
