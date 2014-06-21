# Exercise 1.17

```scheme
(define (double x) (bitwise-arithmetic-shift-left  x 1))
(define (halve  x) (bitwise-arithmetic-shift-right x 1))

(define (fast-mul a b)
  (if (= b 1)
      a
      (fast-mul (double a) (halve b))))

;; Testing
(display (fast-mul 2 2))
(display (fast-mul 2 4))
```

