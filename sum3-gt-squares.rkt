#lang racket

; given three numbers returns the sum of the squares of the 2 greatest numbers
(define (sum3-gt-squares a b c)
          (define (sum-squares a b)
            (+ (* a a) (* b b)))
          (if (> a b)
              (if (> b c)
                  (sum-squares a b)
                  (sum-squares a c))
              (if (> a c)
                  (sum-squares b a)
                  (sum-squares b c))))
