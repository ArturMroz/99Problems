;;; 1.el --- find last element exercise

;;; Commentary:

;; Find the last element of a list.
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun my-last1 (my-list)
  "Return last element of MY-LIST, tail recursion Elisp style."
  (pcase my-list
    (`() nil)
    (`(,x) x)
    (`(,_ . ,xs) (my-last1 xs))))

(defun my-last2 (my-list)
  "Return last element of MY-LIST, tail recursion Lisp style."
  (cond
   ((endp my-list) nil)
   ((endp (rest my-list)) my-list)
   (t (my-last2 (rest my-list)))))

(defun my-last3 (my-list)
  "Return last element of MY-LIST, Common Lisp reduce."
  (cond
   ((null my-list) nil)
   (t (cl-reduce (lambda (acc x) x) my-list))))

(defun my-last4 (my-list)
  "Return last element of MY-LIST."
  (car (reverse my-list)))

(defun my-last5 (my-list)
  "Return last element of MY-LIST, cheeky style."
  (last my-list))

;;; 1.el ends here
