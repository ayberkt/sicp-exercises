# Exercise 1.37

### 1.37.a

```scheme
(define (cont-frac n d k)
  (define (iter i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i)
                    (iter (add1 i))))))
  (iter 1))
```

The question is

> How large you must make ```k``` in order to get an approximation that is accurate to 4 decimal places.

Thus we may define a ```close-enough?``` test that checks whether we have reached a 4-decimal-place proximity with a given ```k``` value.

```scheme
(define (close-enough? candidate)
  (let ((phi 1.6180))
    (< (abs (- candidate phi)) 0.0001))) 

(close-enough? (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10))

(let ((phi-approx (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10)))
  (close-enough? (/ 1 phi-approx)))
                                        ; => #f

(let ((phi-approx (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 30)))
  (close-enough? (/ 1 phi-approx)))
                                        ; => #t
```

As we can see ```30``` steps were adequate to approximate Φ to 4 decimal places.
