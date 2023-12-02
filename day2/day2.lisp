(defun cube-conundrum ()
  (cube-conundrum-part1)
  (cube-conundrum-part2))

(defun cube-conundrum-part1 ()
  (with-open-file (file "input.txt")
	(let ((sum 0) (gamenr) (line-split) (sets) (colors) (couple) (cubecolor) (cubeamount)
		  (redcubes 12) (greencubes 13) (bluecubes 14) (red) (green) (blue))
	  (loop for line = (read-line file nil nil)
			while line
			do
			   (setq red 0)
			   (setq green 0)
			   (setq blue 0)
			   ;; split line in game info and sets
			   (setq line-split (split-sequence:split-sequence #\: line))
			   ;; set game number
			   (setq gamenr (parse-integer (car (cdr (split-sequence:split-sequence #\Space (car line-split))))))
			   ;; split sets
			   (setq sets (split-sequence:split-sequence #\; (car (cdr line-split))))
			   ;; traverse set items
			   (dolist (item sets)
				 ;; split set in colors
				 (setq colors (split-sequence:split-sequence #\, item))
				 ;; traverse per color
				 (dolist (color colors)
				   ;; couple is <num> <color>
				   (setq couple (split-sequence:split-sequence #\Space color))
				   ;; get color of cubes
				   (setq cubecolor (car (cdr (cdr couple))))
				   ;; get amount of cubes
				   (setq cubeamount (parse-integer (car (cdr couple))))
				   ;; count number of cubes per color
				   (if (and (equalp "red" cubecolor) (> cubeamount red))
					   (setq red cubeamount))
				   (if (and (equalp "green" cubecolor) (> cubeamount green))
					   (setq green cubeamount))
				   (if (and (equalp "blue" cubecolor) (> cubeamount blue))
					   (setq blue cubeamount))))
			   ;; check if game is possible
			   (if (and (<= red redcubes) (<= green greencubes) (<= blue bluecubes))
				   (incf sum gamenr)))
	  (format t "Part 1: ~d~%" sum))))

(defun cube-conundrum-part2 ()
  (with-open-file (file "input.txt")
	(let ((sum))
	  (format t "Part 2: ~d~%" sum))))
