(defun problem1 (number)
  (let ((sum 0))
        (loop for i from 1  to (1- number)
           do (if (or (zerop (mod 3))
                      (zerop (mod 5)))
                  (incf sum i)))
             sum))
