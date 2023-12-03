(defun trebuchet ()
  (trebuchet-part1)
  (trebuchet-part2))

(defun trebuchet-part1 ()
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
	  (format t "Part 1: ~d~%" sum))))

(defun trebuchet-part2 ()
  (with-open-file (file "input.txt")
	(let ((numbers) (sum 0)
		  (duos '(("one" "o1e") ("two" "t2o") ("three" "th3ee") ("four" "f4ur")
				  ("five" "f5ve") ("six" "s6x") ("seven" "se7en")
				  ("eight" "ei8ht") ("nine" "n9ne") ("zero" "z0ro"))))
	  (loop for line = (read-line file nil nil)
			while line
			do
			   (dolist (duo duos)
				 (setq line (cl-ppcre:regex-replace-all
							 (car duo) line (cdr duo))))
			   (setq line (coerce line 'list))
			   (setq numbers '())
			   (dolist (x line numbers)
				 (if (digit-char-p x)
					 (push (digit-char-p x) numbers)))
			   (setq sum (+ sum (* (car (last numbers)) 10) (car numbers))))
	  (format t "Part 2: ~d~%" sum))))
