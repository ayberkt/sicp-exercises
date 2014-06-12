# Exercise 1.5

When an applicative-order-based interpreter is being used, Bitdiddle's test will get stuck. When the interpreter tries to evaluate ```(p)``` it will call the function p which will call itself which will, then, call itself and so forth...

When normal-order evaluation is used, however, the interpreter's job will be done before even it gets to evaluate ```(p)```. Thus, it will simply return 0.
