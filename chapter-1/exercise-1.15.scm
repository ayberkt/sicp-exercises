# Exercise 1.15

## 1.15.a

This is probably a very bad way of doing this, in terms of functional thinking, but with a little mutation like this we can easily find out that calculating ```(sin 12.5)``` requires the method to be called **5** times.

```scheme
(define (count-p x)
    (define counter 0) 
    (define (cube x) (* x x x))
    (define (p x)
      (set! counter (add1 counter))
      (- (* 3 x) (* 4 (cube x))))
    (define (sine angle)
      (if (not (> (abs angle) 0.1))
          angle
          (p (sine (/ angle 3.0)))))
    (sine x)
    counter)

(count-p 12.15)
; => 5
```

## 1.15.b


