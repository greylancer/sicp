#lang scheme
(define (sum-square2 x y z)
  (sum-square (max x y) (max (min x y) z)))
(define (sum-square x y)
  (+ (* x x) (* y y)))