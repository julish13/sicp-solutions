#lang sicp

(#%require rackunit)

(define
  (<= x y)
  (if (or(< x y)
         (equal? x y))
      #t
      #f))

(define
  (sum-of-squares x y)
  (+ (* x x)
     (* y y)))
                  

(define
  (solution x y z)
  (cond
    [(and (<= x y) (<= x z)) (sum-of-squares y z)]
    [(and (<= z y) (<= z x)) (sum-of-squares x y)]
    [else (sum-of-squares x z)]))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 1 1 3) 10)
(check-equal? (solution 3 3 3) 18)