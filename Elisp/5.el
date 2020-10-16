;;; 5.el --- 99 problems

;;; Commentary:

;; Reverse a list.
;; https://wiki.haskell.org/99_questions/1_to_10

;;; Code:

(defun my-reverse (my-list)
  "Reverse MY-LIST."
  (cl-reduce
   (lambda (acc cur) (cons cur acc))
   my-list
   :initial-value nil))

(defun my-reverse2 (my-list)
  "Reverse MY-LIST."
  (seq-reduce
   (lambda (acc cur) (cons cur acc))
   my-list
   nil))

(defun my-reverse3 (my-list)
  "Reverse MY-LIST."
  (my-reverse3-helper my-list '()))

(defun my-reverse3-helper (my-list acc)
  (if (null my-list)
      acc
    (my-reverse3-helper
     (cdr my-list)
     (cons (car my-list) acc))))

(my-reverse3 '(1 2 3 21 23))

;;; 5.el ends here
