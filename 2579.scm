(define save-vector (make-vector 301 0))
(define dp-vector (make-vector 301 0))
(define n (read))
(define (save-init count)
  (if (<= count n)
    (begin (vector-set! save-vector count (read))
           (save-init (+ count 1)))))
(save-init 1)
(vector-set! dp-vector 1 (vector-ref save-vector 1))
(vector-set! dp-vector 2 (+ (vector-ref save-vector 1) (vector-ref save-vector 2)))
(vector-set! dp-vector 3 (max (+ (vector-ref save-vector 1) (vector-ref save-vector 3))
                              (+ (vector-ref save-vector 2) (vector-ref save-vector 3))))
(define (dp-iter count)
  (if (<= count n)
    (begin (vector-set! dp-vector count (max (+ (vector-ref dp-vector (- count 2))
                                                (vector-ref save-vector count))
                                             (+ (vector-ref dp-vector (- count 3))
                                                (vector-ref save-vector (- count 1))
                                                (vector-ref save-vector count))))
           (dp-iter (+ count 1)))))
(dp-iter 4)
(print (vector-ref dp-vector n))
