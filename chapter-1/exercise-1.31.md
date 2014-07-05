# Exercise 1.31

## 1.31.a

```scheme
(define (product f a next b)
  (if (> a b)
      1
      (* (f a)
         (product f (next a) next b))))

(define (pi a)
  (* (/ a (add1 a))
     (/ (+ a 2) (add1 a))))

(let ((approx  (product (lambda (x) (* (/ x (add1 x))
                                  (/ (+ x 2) (add1 x))))
                        2
                        (lambda (x) (+ x 2))
                        20)))
  (display (* 4 (exact->inexact approx))))
; => 3.2137849402931895
```

## 1.31.b
