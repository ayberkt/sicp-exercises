# Exercise 1.27

In SICP the Fermat-based primality test is defined as follows:
```scheme
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else #f)))
```

With our tests defined like this, let's test the primality of a few numbers.
```scheme
;; These are all primes.
(define primes '(13 457 787 929 1151))

;; Let's try the test on non-Carmichael prime numbers.
(map (lambda (x) (fast-prime? x 50)) primes)
; => (#t #t #t #t #t)
```
It returns true for all; it correctly determined all numbers to be
primes.

Now let's try the Carmichael numbers.
```scheme
;; The following are not primes.
(define carmichael-numbers '(561 1105 1729 2465))

(map (lambda (x) (fast-prime? x 50)) carmichael-numbers)
; => (#t #t #t #t)
```

Carmichael numbers are not prime numbers but they do trick our
Fermat test and make it return ```true``` as we see here.

