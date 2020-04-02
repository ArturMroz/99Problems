;;; 2.el --- Find last but one element (99 problems)

;;; Commentary:

;; Find the last but one element of a list.
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun my-but-last1 (my-list)
  "Return last but one element of MY-LIST, tail recursion Elisp style."
  (pcase my-list
    (`() (error "Empty list"))
    (`(,_) (error "List contains only one item"))
    (`(,x ,_) x)
    (`(,_ . ,xs) (my-but-last1 xs))))

(defun my-but-last2 (my-list)
  "Return last but one element of MY-LIST."
  (nth 1 (reverse my-list)))

(defun my-but-last3 (my-list)
  "Return last but one element of MY-LIST."
  (last (butlast my-list 1)))

(defun my-but-last4 (my-list)
  "Return last but one element of MY-LIST."
  (car (cdr (reverse my-list))))

;;; 2.el ends here
