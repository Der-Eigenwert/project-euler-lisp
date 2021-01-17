(defun sum-square-difference ()
  (- ((lambda (x) (* x x)) (loop for i from 1 to 100 sum i))
     (reduce '+ (mapcar (lambda (x) (* x x)) (loop for i from 1 to 100 collect i)))))

(princ (sum-square-difference))
(terpri)
