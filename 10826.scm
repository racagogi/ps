(define n (read))
(define (fin n prev post )
  (cond ((= n 1)
         (display post)
         (newline))
        (else (fin (- n 1) post (+ prev post)))))
(cond ((= n 0)
       (display 0)
       (newline))
      (else (fin n 0 1)))
