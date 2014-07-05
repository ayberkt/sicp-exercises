# Exercise 1.34

When we call ```f```, with totally perverse intentions, the substitution model looks like

```
(f f)
(f 2)
(2 2)
```

At this point, the value 2 is attemted to be called as a procedure. Therefore, we get back an error message explaning the situation. With Petite Chez Scheme I got

```
Exception: attempt to apply non-procedure 2
```