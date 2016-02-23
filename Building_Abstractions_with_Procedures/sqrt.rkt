#lang racket 

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000000001))

(define (my-sqrt x)
  (sqrt-iter 1.0 x))

(my-sqrt 3)
