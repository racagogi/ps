(define n (read))
(define x (read))

(define (iter count lesslist)
  (define (less)
    (define num (read))
    (if (< num x)
      (cons num lesslist)
      lesslist))
  (if (> count 0)
      (iter (- count 1) (less))
      lesslist))

(define (print-list count l)
  (if (< count (- (length l) 1))
      (begin (display (list-ref l count))
             (display " ")
             (print-list (+ count 1) l))
      (begin (display (list-ref l count))
             (newline))))
(print-list 0 (reverse (iter n '())))
