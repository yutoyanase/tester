(setf(get 's 'neighbors) '(a d)
(get 'a 'neighbors) '(s b d)
(get 'b 'neighbors) '(a c e)
(get 'c 'neighbors) '(b)
(get 'd 'neighbors) '(s a e)
(get 'e 'neighbors) '(b d f)
(get 'f 'neighbors) '(e))


(defun search (start finish queue)
(cond((endp queue) nil)
((complete2 queue finish))
(t (search start finish (extend3 queue)))))


(defun endp(queue)(null queue))


(defun complete2(queue finish)
 (cond ((null queue)nil)
 ((complete(car queue) finish))
((complete2(cdr queue) finish))
(t nil)))

(defun complete(queue finish)
(cond ((eq (car queue) finish) (reverse queue))
(t nil)))


(defun extend3(queue)
 (cond ((null queue) nil)
 (t (append (extend(car queue))
 (extend3(cdr queue))))))

(defun extend (path)
(extend2(get_neighbors (last_node path) path) path nil))

(defun last_node(path)
(car path))

(defun extend2(neighbors path queue)
(cond ((null neighbors) (reverse queue))
(t (extend2 (cdr neighbors) path (cons(cons (car neighbors)path) queue )))))


(defun get_neighbors(node path)
(get_neighbors2 (get node 'neighbors) path))

(defun get_neighbors2(neighbors path)
(cond ((null path) neighbors)
(t (get_neighbors2 (removecycle (car path) neighbors)(cdr path)))))

(defun append (list1 list2)
(cond ((null list1) list2)
(t (cons (car list1) (append (cdr list1) list2)))))

(defun reverse(list1)(reverse2 list1 nil))

(defun reverse2(list1 list2)
(cond ((null list1) list2)
(t(reverse2 (cdr list1)(cons (car list1) list2)))))

(defun removecycle (a neighbors)
 (cond ((null neighbors) nil)
 ((eq a (car neighbors))(removecycle a (cdr neighbors)))
 (t (cons (car neighbors)(removecycle a (cdr neighbors))))))
