# Exercise 1.41

```scheme
(define (double f)
  (lambda (x) (f (f x))))

((double add1) 2)
; => 4
```
