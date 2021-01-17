(defun primep (n)
  (loop for i from 2 to (sqrt n)
	when (= 0 (mod n i)) return NIL
	finally (return t)))

(defun 10001st-prime ()
  (loop for i upfrom 2
	with count = 0
	when (primep i) do (incf count)
	when (= 10001 count) return i))

(princ (10001st-prime))
(terpri)
