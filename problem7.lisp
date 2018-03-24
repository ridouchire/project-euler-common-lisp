(defun prime? (number)
  (labels ((rec (n)
		(if (> (* n n) number)
		    t
		  (if (zerop (rem number n))
		      nil
		    (rec (1+ n)))))
	   (and (/= 1 number)
		(rec 2)))))

(defun problem7 (limit)
  (labels ((rec (pam cnt)
		(if (= limit cnt)
		    (1- pam)
		  (if (prime? pam)
		      (rec (1+ pam) (1+ cnt))
		    (rec (1+ pam) cnt)))))
    (rec 2 0)))
