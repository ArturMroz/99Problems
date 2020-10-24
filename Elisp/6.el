;;; 6.el --- 99 problems

;;; Commentary:

;; Find out whether a list is a palindrome.
;; A palindrome can be read forward or backward; e.g. (x a m a x).
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun is-palindrome (my-list)
  "Check if MY-LIST is palindrome."
  (equal my-list (reverse my-list)))

(is-palindrome '(1 2 4 2 1))
(is-palindrome "racecar")

;;; 6.el ends here
