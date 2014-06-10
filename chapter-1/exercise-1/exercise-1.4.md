# Exercise 1.4

The expression ```(if (> b 0) + -)``` evalutes to either ```+``` or ```-```. Since functions are first-class citizens in Scheme it is possible to pass them around as seen in this case.

As long as the first element of an S-expression is a function, it is valid “code”; It doesn't matter which other process yielded our function.

To give another example, the following could be done in Scheme too.

```scheme
(define ops `(,+ ,- ,* ,/))
((car ops) 1 2)
((cadr) ops 1 2)
```
