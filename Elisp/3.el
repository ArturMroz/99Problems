;;; 3.el --- 99 problems

;;; Commentary:

;; Find the K'th element of a list. The first element in the list is number 1.
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun element-at (n my-list)
  "Return Nth element of MY-LIST, index starts at 1."
  (nth (1- n) my-list))

;;; 3.el ends here
