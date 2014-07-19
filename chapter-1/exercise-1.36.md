# Exercise 1.36

First let us modify ```fixed-point``` as designated:

```scheme
(define tolerance 0.0001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
(try first-guess))

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
```

Using this to compute the fixed point of ```(lambda (x) (/ (log 1000) (log x)))``` we get back

```scheme
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

3.0
6.287709822868153
3.757079790200296
5.218748919675315
4.180797746063314
4.828902657081293
4.386936895811029
4.671722808746095
4.481109436117821
4.605567315585735
4.522955348093164
4.577201597629606
4.541325786357399
4.564940905198754
4.549347961475409
4.5596228442307565
4.552843114094703
4.55731263660315
4.554364381825887
4.556308401465587
4.555026226620339
4.55587174038325
4.555314115211184
4.555681847896976
4.555439330395129
4.555599264136406
4.555493789937456
4.555563347820309
```
