To write a ```cube-root``` function, inspired by the ```sqrt``` function presented in 1.1.7, it is adequate to just rewrite ```good-enough?``` to test by cubing the number and change ```improve``` so that it computes a new approximation using the formula

<img src="http://www.sciweavers.org/tex2img.php?eq=%5Cfrac%7Bx%20%2F%20y%20%5E%202%20%2B%202y%7D%7B3%7D&bc=White&fc=Black&im=jpg&fs=18&ff=modern&edit=0" align="center" border="0" alt="\frac{x / y ^ 2 + 2y}{3}" width="110" height="56" />

```scheme
(define (cube-root num)
    (define (cube-root-iter num guess)
        (if (good-enough? guess)
            guess
            (cube-root-iter num (improve num guess))))
    (define (improve num guess)
        (/ (+ (* 2 guess)
              (/ num (expt guess 2.0))) 3.0))
    (define (good-enough? guess)
        (< (abs (- num (expt guess 3))) 0.1))
    (cube-root-iter num 1))
(cube-root 8)
; => 2.003137499141287
```
