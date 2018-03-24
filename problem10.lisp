(defun prime? (number)
  (labels ((rec (n)
		(if (> (* n n) number)
		    t
		  (if (zerop (rem number n))
		      nil
		    (rec (1+ n))))))
    (rec 2)))

(defun problem10 ()
  (let ((sum 2))
    (loop
     :for x :from 2 :upto 2000000 :by 2
     :do (if (prime? x)
	     (incf sum
		   (the fixnum n))))
    sum))
