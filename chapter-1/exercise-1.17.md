# Exercise 1.17

```scheme
(define (double x) (bitwise-arithmetic-shift-left  x 1))
(define (halve  x) (bitwise-arithmetic-shift-right x 1))

(define (fast-mul a b)
  (define (fast-mul-iter iter result)
    (if (< iter b)
        (fast-mul-iter (+ iter 1) (+ result a))
        result))
  (fast-mul-iter 0 0))

;; Testing

(display (fast-mul 2 2))
(display (fast-mul 2 4))
```

