(defun name-day ()
  (name-day-part1)
  (name-day-part2))

(defun name-day-part1 ()
  (with-open-file (file "input.txt")
	(let ((sum 0))
	  (loop for line = (read-line file nil nil)
			while line
			do

			)
	  (format t "Part 1: ~d~%" sum))))

(defun name-day-part2 ()
  (with-open-file (file "input.txt")
	(let ((sum 0))
	  (loop for line = (read-line file nil nil)
			while line
			do

			)
	  (format t "Part 2: ~d~%" sum))))
