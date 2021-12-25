(defun euler:pr001:multiple-of-3-or-5 (n)
  (or (equal (% n 3) 0) (equal (% n 5) 0)))

(defun euler:pr001:answer (n)
  (let ((i 0)
        (x 0))
    (while (< i n)
      (if (euler:pr001:multiple-of-3-or-5 i)
          (setq x (+ x i)))
      (setq i (1+ i)))
    x))

(provide 'pr001)
