#lang racket
(define (cont-frac n d k)
  (define (iter i)
    (if (= i k) (/ (n k) (d k))
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1.0))

(define (test k)
  (/ 1 (cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             k)))

(provide test)
(provide cont-frac)
