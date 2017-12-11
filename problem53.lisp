(defun factorial (n)
  (let ((p 1))
    (dotimes (i n p)
      (setf p (* p (1+ i ))))))

(defun sel (n r)
  (/ (factorial n)
     (* (factorial r) (factorial (- n r)))))

(defun problem53 ()
  (let ((cnt 0))
    (loop
       :for i from 1 upto 100
       :do (dotimes (j i)
             (if (> (sel i (1+ j)) 10000)
                 (incf cnt))))
    cnt))
