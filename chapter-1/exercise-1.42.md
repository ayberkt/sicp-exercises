# Exercise 1.42

```scheme
(define (square x) (expt x 2))
(define inc add1)

(define (compose f g)
  (lambda (x) (f (g x))))

((compose square inc) 6)
;=> 49
```
