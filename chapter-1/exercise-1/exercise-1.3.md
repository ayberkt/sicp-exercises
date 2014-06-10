# Exercise 1.3

```scheme
(define (sum-digit-square-of-greater-pair x y z)
    (let ((greater-pair (cdr (list-sort < (list x y z)))))
        (+ (expt (car greater-pair)  2)
           (expt (cadr greater-pair) 2))))
```
