# Exercise 1.16

Iterative version of the ```fast-expt``` algorithm

```scheme
(define (square x) (* x x))

(define (fast-expt b n)
  (define (fast-expt-iter n result)
    (cond
     ((<= n 1) result)
     ((even? n) (fast-expt-iter (/ n 2)
                                (* result (square b))))
     (else (fast-expt-iter (sub1 n)
                           (* result b)))))
  (if (> n 1 )
      (fast-expt-iter n 1)
      b))

(display (fast-expt 3 3))
```
