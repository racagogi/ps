(define (count n)
  (cond ((eof-object? (read)) n)
        (else (count (+ n 1)))))
(display (count 0))
(newline)
