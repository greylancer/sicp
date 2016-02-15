#lang scheme
(define (simpson f a b n)
  (define h (/ (- b a) n))

  (define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

  (define (factor k)
    (* (cond ((or (= k 0) (= k n)) 1)
          ((odd? k) 4)
          ((even? k) 2))
       (y k)))

  (define (y k)
    (f (+ a (* k h))))

  (define (next x)
    (+ x 1))
  
  (* (/ h 3) (sum factor (exact->inexact 0) next n)))

(define (cube x) (expt x 3))
  
