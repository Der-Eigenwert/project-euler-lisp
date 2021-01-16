(defun multiples-of-3-and-5 ()
  (loop for i from 1 below 1000
	when (or (= 0 (mod i 3))
		 (= 0 (mod i 5))) sum i))

(princ (multiples-of-3-and-5))
(terpri)
