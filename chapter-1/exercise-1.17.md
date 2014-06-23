# Exercise 1.17

In order to come up with a ```fast-mul``` function, analogous to ```fast-expt```, we should first find a behavior of multiplication that is analogous to the behavior we used in [ex 1.16] (https://github.com/ayberkt/sicp-exercises/blob/master/chapter-1/exercise-1.16.md).

We may observe that multiplication can be defined as

```
a * b = 2 * a * (b / 2) if b is even
      = a + a * (b - 1) if a is even
```

This observation is implemented as follow:

```scheme

;; Suppose that `double` and `halve` are pre-defined.
(define (double x) (bitwise-arithmetic-shift-left x 1))
(define (halve  x) (bitwise-arithmetic-shift-right x 1))

(define (fast-mul a b)
  (cond
   ((<= b 1) a)
   ((even? b) (double (fast-mul a (halve b))))
   (else (+ a (fast-mul a (- b 1))))))

;; Testing
(display (fast-mul 2 2))
; => 4
(display (fast-mul 7 5))
; => 35
```

