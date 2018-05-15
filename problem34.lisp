(defun factorial (n)
  (labels ((rec (acc cur)
	     (if (> cur n)
		 acc
		 (rec (* acc cur) (1+ cur)))))
    (rec 1 2)))

(defvar *ping* '(1 1 2 6 4 0 0 0 0 0))

(defun foo (n)
  (let ((lsb (rem n 10)))
    (labels ((rec (acc rest)
	       (cond ((and (zerop acc) (zerop rest)) t)
		     ((or (and (zerop acc) (/= 0 rest))
			  (and (/= 0 acc) (zerop rest))) nil)
		     (t (let ((lsb (rem rest 10)))
			  (rec (- acc (nth lsd *ping*))
			       (/ (- rest lsb) 10)))))))
      (rec lsb n))))

(defun bar (number)
  (labels ((rec (acc rest)
	     (cond ((and (zerop acc) (zerop rest)) t)
		   ((and (zerop acc) (/= 0 rest)) nil)
		   ((and (/= 0 acc) (zerop rest)) nil)
		   (t (let ((lsb (rem rest 10)))
			(rec (- acc (factorial lsb))
			     (/ (- rest lsb) 10)))))))
    (and (/= 1 number)
	 (/= 2 number)
	 (rec number number))))

(defun problem34 ()
  (let ((sum 0))
    (loop :for i :from 3 :upto (expt 10 7)
       :do (if (and (foo i)
		    (bar i))
	       (incf sum i)))
    sum))
