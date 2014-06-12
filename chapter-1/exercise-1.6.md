The problem about Eva Lu Ator's ```new-if```, which is defined as a function, is that it does not tamper with the evaluation of its arguments: ```then-clause``` and ```else-clause```.

What is peculiar about an if-statement is that its ```then-clause``` is executed only if its predicate evaluates to false and ```else-clause``` only if it is true. Only one of ```then-clause``` or ```else-clause``` should be evaluated with respect to the value of the predicate; if the predicate is true the ```else-clause``` should be virtually non-existent for the interpreter and vice versa.

So, in order to see what is wrong about Eva's ```new-if``` let us define a non-terminating recursive function.

```scheme
(define (p) (p))
```

If the interpreter gets to call ```p``` at some point, the program will inevitably get stuck in a loop. Let's tinker with out ```new-if``` by placing ```p``` in the ```else-clause``` that is supposed not to be executed when the predicate is true.

```scheme
(new-if #t 1 (p))
; Gets stuck forever
```

The program does get stuck in a loop which means that the interpreter does call ```p```. If we try the same thing with the built-in if statement.

```scheme
(if #t 1 (p))
; => 1
```

We immediately get back ```1``` since ```if```, defined as a special form, tampers with the evaluation of the then clause, and else clause (```1``` and ```(p)``` in this case), and thus ```(p)``` is non-existent for it since the predicate is true.

This is also the same problem which precludes our ```sqrt``` function from doing its job.

The if-statement should be a special form since it is special in that it defines an evaluation behavior peculiar to itself.