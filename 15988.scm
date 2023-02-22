(define dp-vector (make-vector 1000000 0))
(vector-set! dp-vector 0 1)
(vector-set! dp-vector 1 2)
(vector-set! dp-vector 2 4)
(define (iter n)
  (if (< n 1000000)
    (begin (vector-set! dp-vector
                        n
                        (modulo (+ (vector-ref dp-vector (- n 1))
                                   (vector-ref dp-vector (- n 2))
                                   (vector-ref dp-vector (- n 3))) 1000000009))
           (iter (+ n 1)))))
(iter 3)

(define (test count)
  (if (> count 0)
    (begin (solve)
           (test (- count 1)))))
(define (solve)
  (print (vector-ref dp-vector (- (read) 1))))
(test (read))
