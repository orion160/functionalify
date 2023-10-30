#lang racket

; given three numbers returns the sum of the squares of the 2 greatest numbers
(define (sum3-gt-squares a b c)
        (define (sum-squares a b)
          (+ (* a a) (* b b)))
        (cond ((and (> a b)
                    (> a c))
               (if (> b c) (sum-squares a b) (sum-squares a c)))
              ((and (> b a) (> b c))
               (if (> a c) (sum-squares b a) (sum-squares b c)))
              ((and (> c a)
                    (> c b))
               (if (> a b) (sum-squares c a) (sum-squares c b)))))
