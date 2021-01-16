(defun palindromep (n)
  (let ((s (write-to-string n)))
    (equal s (reverse s))))

(defun largest-palindrome-product ()
  (loop for i from 100 to 999
	maximize (loop for j from i to 999
		       when (palindromep (* i j))
		       maximize (* i j))))

(princ (largest-palindrome-product))
(terpri)
