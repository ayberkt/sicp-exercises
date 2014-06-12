# Exercise 1.10

```scheme
(A 1 10)
; => 1024
> (A 2 4)
; => 65536
> (A 3 3)
; => 65536
```

To understand how the function ```f``` behaves, we can use the map ```map``` function

```scheme
(define nums '(0 1 2 3 4))

(map f nums)
; => (0 2 4 6 8)

(map g nums)
; => (0 2 4 8 16)

(map h nums)
; => (0 2 4 16 65536)
```

Thus, ```f``` could be mathematically defined as

```
f(x) = x + 2
```

Function ```g``` can be described as

````
g(x) = 2 ^ x
```

Function ```h``` can defined recursively as:

```
h(0) = 1
h(x) = 2 ^ h(x - 1)
```

<img src="http://www.sciweavers.org/tex2img.php?eq=%20h%28x%29%20%3D%5Cbegin%7Bcases%7D1%20%26%20x%20%3D%200%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%202%20%5E%7Bh%28x%20-%201%29%7D%20%26%20x%20%3E%200%5Cend%7Bcases%7D%20&bc=White&fc=Black&im=jpg&fs=12&ff=modern&edit=0" align="center" border="0" alt=" h(x) =\begin{cases}1 & x = 0\\                              2 ^{h(x - 1)} & x > 0\end{cases} " width="171" height="53" />
