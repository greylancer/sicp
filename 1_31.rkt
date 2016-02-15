#lang scheme
(define (product term a next b)
  (if (> a b) 1
      (* (term a) (product term (next a) next b))))

(define (factorial a)
  (product (lambda (x) x) 1 (lambda (x) (+ x 1)) a))

(define (pi)
  (define (term x)
    (/ (* (- x 1) (+ x 1)) (* x x)))

  (define (next x)
    (+ 2 x))
  
  (* (product term 3.0 next 1000) 4))

