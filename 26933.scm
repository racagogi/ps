(define n (read))
(define (cost)
  (let ((h (read))
        (b (read))
        (k (read)))
    (if (< h b)
      (* k (- b h))
      0)))
(define (iter n acc)
  (if (= n 0)
    (print acc)
    (iter (- n 1) (+ acc (cost)))))
(iter n 0)
