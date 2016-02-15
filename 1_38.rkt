#lang racket
(require "1_37.rkt")
(define (d i)
  (if (= (modulo i 3) 2)
      (/ (* (+ i 1) 2) 3)
      1))
(define (e k)
  (+ (cont-frac (lambda (x) 1.0) d k) 2))
