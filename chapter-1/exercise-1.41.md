# Exercise 1.41

```scheme
(define (double f)
  (lambda (x) (f (f x))))
```

Applying this procedure as instructed
```scheme
(((double (double double)) add1) 5)
;=> 21
```
We get back 21.
```
