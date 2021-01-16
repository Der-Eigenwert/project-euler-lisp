(defun even-fibonacci-numbers ()
  (loop with a = 1 and b = 2
	while (< a 4000000)
	when (= 0 (mod a 2)) sum a
	do (shiftf a b (+ a b))))

(princ (even-fibonacci-numbers))
(terpri)
