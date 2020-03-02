;;;
(quote (+ 1 2))
;;;
(defun hello-world ()
  (format t "hello, world."))
;;;
(defun verbose-sum (x y)
  "Sum any two number after printing info"
  (format t "Summing ~d and ~d.~%" x y)
  (+ x y))
;;; Optional Parameters
(defun foo (a b &optional c d)
  (list a b c d))

(defun foo2 (a &optional (b 10))
  (list a b))

;;; More fancy
(defun make-rect (width &optional (height width))
  (format t "Width ~d, Hight ~d" width height))
;;; More more fancy
(defun foo3 (a b &optional (c 3 c-supplied-p))
  (list a b c c-supplied-p))
;;;
(defun foo (n)
  (dotimes (i 10)
    (dotimes (j 10)
      (when (> (* i j) n)
        (return-from foo (list i j))))))

;;; Higher Order Functions
(defun plot (fn min max step)
  (loop for i from min to max by step do
       (loop repeat (funcall fn i) do (format t "*"))
       (format t "~%")))
