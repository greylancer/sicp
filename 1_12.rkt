#lang scheme
(define (pascal-tri i j)
  (if (or (= j 0) (= i j)) 1 (+ (pascal-tri (- i 1) (- j 1)) (pascal-tri (- i 1) j))))

