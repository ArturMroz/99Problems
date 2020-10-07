;;; 4.el --- 99 problems

;;; Commentary:

;; Find the number of elements of a list.
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun my-length (my-list)
  "Return number of elements of MY-LIST."
  (length my-list))

(defun my-length2 (my-list)
  "Return number of elements of MY-LIST, using reduce."
  (cl-reduce
   (lambda (acc _) (1+ acc))
   my-list))

(defun my-length3 (my-list)
  "Return number of elements of MY-LIST, using tail recursion."
  (pcase my-list
    (`() 0)
    (`(,_ . ,xs) (1+ (my-length3 xs)))))

(defun my-length4 (my-list)
  "Return number of elements of MY-LIST, using apply and map."
  (apply #'+ (mapcar
              (lambda (_) 1)
              my-list)))

(my-length4 '(1 2 3 21 23))

;;; 4.el ends here
