# Exercise 1.43

```scheme
(define (square x) (expt x 2))

(define (compose f g)
  (lambda (x) (f (g x))))
```

Making use of our ```compose``` procedure from exercise 1.42 as hinted, we can define a ```repeated``` procedure that applies ```compose``` recursively.

```scheme
(define (repeated f limit)
  (define (iter index g)
    (if (>= index limit)
        g
        (iter (add1 index)
              (compose g f))))
  (iter 1 f))

((repeated square 2) 5)
; => 625
```
