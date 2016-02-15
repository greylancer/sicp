#lang racket
(require "1_42.rkt")

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))

(provide (all-defined-out))