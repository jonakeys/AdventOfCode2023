(defun gear-ratios ()
  (gear-ratios-part1)
  (gear-ratios-part2))

(defun gear-ratios-part1 ()
  (with-open-file (file "input.txt")
	(let ((sum 0))
	  (loop for line = (read-line file nil nil)
			while line
			do
			   
			)
	  (format t "Part 1: ~d~%" sum))))

(defun gear-ratios-part2 ()
  (with-open-file (file "input.txt")
	(let ((sum 0))
	  (loop for line = (read-line file nil nil)
			while line
			do
			   
			)
	  (format t "Part 2: ~d~%" sum))))
