#lang scheme
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (expt test-divisor 2) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next-odd test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-milliseconds) start-time)) #f))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (next-odd n)
  (if (even? n) (+ n 1)
      (+ n 2)))

(define (find-prime-iter n count)
  (if (= count 0) (newline)
  (if (timed-prime-test n) (find-prime-iter (next-odd n) (- count 1))
      (find-prime (next-odd n) count))))

(define (find-prime n count)
  (find-prime-iter (next-odd n) count))
      
