(define a (read))
(define b (read))
(define c (read))
(define minval (min a b c))
(define maxval (max a b c))
(define middleval (cond ((and (not (= minval a))
                              (not (= maxval a))) a)
                        ((and (not (= minval b))
                              (not (= maxval b))) b)
                        (else c)))
(display minval)
(display " ")
(display middleval)
(display " ")
(display maxval)
(newline)
