(defun divisor (number)
  (let ((cnt 0))
    (dotimes (i (truncate (sqrt number)))
      (if (zerop (mod number (1+ i)))
	  (incf cnt 2)))
    cnt))

(defun problem12 ()
  (labels ((rec (x inc)
		(let ((cnt (divisor x)))
		  (if (> cnt 500)
		      test
		    (rec (+ test inc) (1+ inc))))))
    (rec 1 3)))
