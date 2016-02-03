#lang scheme
(define (even? n)
  (= (remainder n 2) 0))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mul a (halve b))))
        (else (+ a (mul a (- b 1))))))

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))
