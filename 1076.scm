(define (str-read)
  (symbol->string (read)))
(define (reg-val)
  (define c (str-read))
  (cond ((equal? c "black") 0)
        ((equal? c "brown") 1)
        ((equal? c "red") 2)
        ((equal? c "orange") 3)
        ((equal? c "yellow") 4)
        ((equal? c "green") 5)
        ((equal? c "blue") 6)
        ((equal? c "violet") 7)
        ((equal? c "grey") 8)
        ((equal? c "white") 9)))
(define (reg-mul)
  (define c (str-read))
  (cond ((equal? c "black") 1)
        ((equal? c "brown") 10)
        ((equal? c "red") 100)
        ((equal? c "orange") 1000)
        ((equal? c "yellow") 10000)
        ((equal? c "green") 100000)
        ((equal? c "blue") 1000000)
        ((equal? c "violet") 10000000)
        ((equal? c "grey") 100000000)
        ((equal? c "white") 1000000000)))

(print (* (+ (* 10 (reg-val)) (reg-val)) (reg-mul)))
