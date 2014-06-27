# Exercise 1.21

```scheme
;; Assuming that `square` is a built-in function
;; (which is in the case of the Scheme used in SICP)
(define (square x) (expt x 2))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(display (smallest-divisor 199))
; => 199
(display (smallest-divisor 1999))
; => 1999
(display (smallest-divisor 19999))
; => 7
```
