(define (iter count minv maxv)
  (if (> count 0)
    (let ((num (read)))
      (iter (- count 1) (min minv num) (max maxv num)))
    (print (* minv maxv))))
(iter (read) 100001 1)
