(define s (read))
(define a (read))
(define b (read))
(define (iter count money)
  (if (>= count s)
    (print money)
    (iter (+ count b) (+ money 100))))
(iter a 250)
