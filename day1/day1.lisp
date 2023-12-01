(defun trebuchet-part1()
  (with-open-file (file "input.txt")
	(let ((numbers) (sum 0))
	  (loop for line = (read-line file nil nil)
			while line
			do
			   (setq line (coerce line 'list))
			   (setq numbers '())
			   (dolist (x line numbers)
				 (if (digit-char-p x)
					 (push (digit-char-p x) numbers)))
			   (setq sum (+ sum (* (car (last numbers)) 10) (car numbers))))
	  sum)))
