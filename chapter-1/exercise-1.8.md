To write a ```cube-root``` function, inspired by the ```sqrt``` function presented in 1.1.7, it is adequate to just rewrite ```good-enough?``` to test by cubing the number and change ```improve``` so that it computes a new approximation using the given formula.

```scheme
(define (cube-root num)
    (define (cube-root-iter guess)
        (if (good-enough? guess)
            guess
            (cube-root-iter (improve guess))))
    (define (improve guess)
        (/ (+ (* 2 guess)
              (/ num (expt guess 2.0))) 3.0))
    (define (good-enough? guess)
        (< (abs (- num (expt guess 3))) 0.001))
    (cube-root-iter 1))
(cube-root 8)
; => 2.003137499141287
```
