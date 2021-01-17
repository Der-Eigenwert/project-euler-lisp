(defun smallest-multiple ()
  (reduce 'lcm (loop for i from 1 to 20
		     collect i)))

(princ (smallest-multiple))
(terpri)
