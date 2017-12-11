(defun problem4 ()
  (let (max 0)
    (dotimes (i 899)
      (dotimes (j 899)
        (let ((mul (* (+ 100 i) (+ 100 j))))
          (if (and (palindrom-view mul)
                   (> mul max))
              (setf max mul)))))
    max))

(defun palindrom-view (number)
  (let ((str (format nil "~A" number)))
    (string= str (reverse str))))

