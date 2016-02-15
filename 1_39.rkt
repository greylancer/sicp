#lang racket
(define (tan-cf x k)
  (define (n i)
    (- (* 2 i) 1))
  
  (define (iter i)
    (if (= i k) (- (n i) (expt x 2))
    (- (n i) (/ (expt x 2) (iter (+ i 1))))))
  
  (/ x (iter 1.0)))
  