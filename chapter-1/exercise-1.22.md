# Exercise 1.22

This exercise is based on the following code provided in the section on primality testing.

```scheme
;; Assume that `square` is a built-in
(define (square x) (expt x 2))

;; This is given by SICP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Here is the solution based on the code given in SICP.
(define (search-for-primes begin end)
  (define (search-iter current)
    (if (= current end)
        (display "Completed.")
        (begin
          (timed-prime-test current)
          (search-iter (inc current)))))
  (search-iter begin))
```

* Three smallest primes larger than 1000

```
1009 *** 7
1013 *** 7
1019 *** 7
```

* Larger than 10000

```
10007 *** 31
10009 *** 21
10037 *** 33
```

* Larger than 100000

```
100003 *** 53
100019 *** 54
100043 *** 58
```

* Larger than 1000000

```
1000003 *** 165
1000033 *** 165
1000037 *** 167
```

Testing for primes around 10,000 takes about 30 seconds, whose square root is approximately equalt to 5.5. In our case, testing for primes around 1000 took about 7 seconds so we may conclude that the results are consistent with the ```theta( sqrt(n) )``` order of growth we anticipated.
