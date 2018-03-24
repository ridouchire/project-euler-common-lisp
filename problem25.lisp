(defun fibonachi (n)
  (labels ((rec (a b m)
		(if (= 2 m)
		    b
		  (rec b (+ a b) (- m 1)))))
    (if (= 1 n)
	1
      (if (= 2 n)
	  1
	(rec 1 1 n)))))

(defun len-number (num)
  (labels ((rec (num len)
		(if (zerop num)
		    len
		  (rec (truncate (/ num 10)) (1+ len)))))
    (rec n 0)))

(defun problem25 (len)
  (labels ((rec (term)
		(if (>= (len-number (fibonachi term)) len)
		    term
		  (rec (1+ term)))))
    (rec 13)))

