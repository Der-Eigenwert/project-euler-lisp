(defconstant k 600851475143)

(defun primep (n)
  (loop for i from 2 to (sqrt n)
	when (= 0 (mod n i)) return NIL
	finally (return t)))

(defun largest-prime-factor ()
  (loop for i from 2 to (sqrt k)
	when (and (primep i)
		  (= 0 (mod k i)))
	maximize i))

(princ (largest-prime-factor))
(terpri)
