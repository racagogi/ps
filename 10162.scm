(let ((a 300)
      (b 60)
      (c 10)
      (n (read)))
  (if (> (modulo n 10) 0)
    (print -1)
    (print (quotient n a) " " (quotient (modulo n a) b) " " (quotient (modulo n b) c))))