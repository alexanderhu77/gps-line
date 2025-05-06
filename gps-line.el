(defun gps-line ()
  "Print the current buffer line number and narrowed line number of point."
  (interactive)
  (let ((line (line-number-at-pos))
	  (total (save-excursion
		  (save-restriction
	            (widen)
	            (- (count-lines (point-min) (point-max)) 1)))))
          (message "Line %d/%d" line total)))
