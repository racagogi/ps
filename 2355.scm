(let ((a (read))
      (b (read)))
  (if (> a b)
    (print (/ (* (- a b -1) (+ b a)) 2))
    (print (/ (* (- b a -1) (+ b a)) 2))))
