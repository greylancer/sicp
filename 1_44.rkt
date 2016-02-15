#lang racket
(require "1_43.rkt")

(define (smooth f)
  (define dx 0.00001)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (repeated-smooth f n)
  ((repeated smooth n) f))

(define (square x)
  (* x x))
  