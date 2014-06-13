;; The following code is R6RS Scheme;
;; it may not conform the Scheme used in SICP.

(define (factorial n)
  (define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))
  (fact-iter 1 1 n))

(define (combination n r)
  (/ (factorial n)
     (* (factorial r)
        (factorial (- n r)))))


(define (pascal n-rows)
  (define (pascal-iter iter triangle)
    (if (= iter n-rows)
        (reverse triangle)
        (pascal-iter (add1 iter)
                     (cons
                       (map (lambda (x) (combination iter x))
                            (iota (add1 iter)))
                       triangle))))
  (pascal-iter 0 '()))

(define (display-triangle rest-triangle)
    (when (not (null? rest-triangle))
      (display (car rest-triangle))
      (newline)
      (display-triangle (cdr rest-triangle))))

(display-triangle (pascal 7))
