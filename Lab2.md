# Лабораторна робота 2

### 1. Створить вектор v із 100 елементів командою v <- rnorm(100). Для цього вектору виведіть: 10-й елемент; елементи з 10-го по 20-й включно; 10 елементів починаючи з 20-го; елементи більше 0.
```
v <- rnorm(100)
print("Весь вектор: ")
print(v)
print("10-й елемент: ")
print(v[10])
print("Елементи з 10-го по 20-й включно: ")
print(v[10:20])
y <- head(v, 29)
print("10 елементів починаючи з 20-го: ")
print(tail(y, 10))
print("Елементи більше 0")
print(v[v > 0])
```
Результат:
```
[1] "Весь вектор: "
  [1] -0.96006263 -0.19960297 -0.75470115  1.18680037  0.93122062 -0.19055183  0.55999930
  [8]  0.71448615  0.29119928  0.59843771 -0.00980078  0.23381109 -0.78862599 -0.61495267
 [15] -0.80454150  1.65101463  0.99062551  0.01691257 -1.03843741 -0.64385282  0.19090172
 [22]  2.26724191  0.84312846 -0.74773641  1.17245980 -0.21154211 -0.55797983 -1.47266670
 [29] -0.11117849 -0.43209523 -0.83193953 -0.32796602 -0.38046409 -1.63944443  0.75839691
 [36]  1.07028646 -0.40106206  1.37997360 -0.83470020 -0.84417783  0.55665253  0.22387433
 [43] -0.21232788  0.42334098 -0.21148573  0.33502794  0.82662852 -0.17369297  1.35731259
 [50]  0.16976698 -0.91995790 -1.79367148  0.40761787 -0.44391751  0.61462693  2.07049860
 [57]  0.39357477  0.07514301  1.50786061  0.09201879 -0.46087029 -0.68558835 -0.38016313
 [64] -1.80260893  2.64138142 -2.02714055  0.45277551 -0.35605784  0.47348960 -0.38571965
 [71]  1.52833594 -0.29246765 -0.27961156  0.62125848 -1.68644842 -0.91510652  0.66888668
 [78]  1.16370668  0.08549454 -1.52555862  0.11518146 -1.05161622 -0.89523600  1.86907918
 [85]  2.01372435  0.40752877 -2.30522825  0.21323419 -0.48353191  0.28651473 -0.26017078
 [92] -0.85846276  0.44373365  0.08269930 -0.08756058 -1.16902973  1.03715934 -1.75840243
 [99] -0.68623979  0.30117496
[1] "10-й елемент: "
[1] 0.5984377
[1] "Елементи з 10-го по 20-й включно: "
 [1]  0.59843771 -0.00980078  0.23381109 -0.78862599 -0.61495267 -0.80454150  1.65101463
 [8]  0.99062551  0.01691257 -1.03843741 -0.64385282
[1] "10 елементів починаючи з 20-го: "
 [1] -0.6438528  0.1909017  2.2672419  0.8431285 -0.7477364  1.1724598 -0.2115421 -0.5579798
 [9] -1.4726667 -0.1111785
[1] "Елементи більше 0"
 [1] 1.18680037 0.93122062 0.55999930 0.71448615 0.29119928 0.59843771 0.23381109 1.65101463
 [9] 0.99062551 0.01691257 0.19090172 2.26724191 0.84312846 1.17245980 0.75839691 1.07028646
[17] 1.37997360 0.55665253 0.22387433 0.42334098 0.33502794 0.82662852 1.35731259 0.16976698
[25] 0.40761787 0.61462693 2.07049860 0.39357477 0.07514301 1.50786061 0.09201879 2.64138142
[33] 0.45277551 0.47348960 1.52833594 0.62125848 0.66888668 1.16370668 0.08549454 0.11518146
[41] 1.86907918 2.01372435 0.40752877 0.21323419 0.28651473 0.44373365 0.08269930 1.03715934
[49] 0.30117496
```
### 2. Створити фрейм (data frame) y командою y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE)). Для цього data frame виведіть: останні 10 строк; строки з 10 по 20 включно; 10-й елемент
```
y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE))
print("Останні 10 строк: ")
print(tail(y, 10))
print("Строки з 10 по 20 включно ")
print(y[c(10:20),])
print("10-й елемент стовпця b")
print(y$b[10])
print("Повністю стовпець cc, при цьому використайте ім’я стовпця")
print(y$cc)
```
Результат:
```
[1] "Останні 10 строк: "
             a   b cc
91  -0.2570519  91  y
92   0.3839516  92  l
93   0.5500688  93  t
94   0.9270360  94  k
95   0.3641147  95  f
96   1.2688991  96  d
97   1.4976313  97  t
98   0.6914746  98  d
99   0.6882009  99  w
100  1.6553885 100  w
[1] "Строки з 10 по 20 включно "
             a  b cc
10 -0.13452586 10  z
11  1.50032395 11  x
12 -0.16141754 12  n
13  0.22704020 13  c
14 -1.10035876 14  f
15 -0.06234805 15  c
16 -0.52883830 16  h
17  1.14775619 17  v
18  0.11930082 18  z
19  0.28564872 19  w
20 -0.14326440 20  b
[1] "10-й елемент стовпця b"
[1] 10
[1] "Повністю стовпець cc, при цьому використайте ім’я стовпця"
  [1] "h" "y" "d" "d" "c" "b" "p" "k" "i" "z" "x" "n" "c" "f" "c" "h" "v" "z" "w" "b" "e" "u" "t" "b" "k" "f" "k" "s" "c"
 [30] "f" "f" "n" "u" "o" "e" "f" "l" "j" "u" "m" "m" "k" "i" "x" "t" "h" "c" "r" "b" "b" "b" "z" "z" "x" "w" "d" "b" "b"
 [59] "n" "o" "i" "t" "b" "c" "e" "z" "s" "w" "k" "g" "y" "o" "t" "z" "f" "h" "m" "a" "h" "u" "s" "d" "c" "a" "w" "w" "m"
 [88] "s" "u" "e" "y" "l" "t" "k" "f" "d" "t" "d" "w" "w"
```
### 3. Створити вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. Для цього вектору: виведіть всі елементи, які не NA; підрахуйте середнє значення всіх елементів цього вектору без NA значень та з NA значеннями.

Матриця створена використовуючи matrix функцію:
```
z <- c(1, 2, 3, NA, 4, NA, 5, NA)
vecor_without_na <- z[!is.na(z)]
print("Всі елементи, які не NA: ")
print(vecor_without_na)
print("Середнє значення всіх елементів цього вектору без NA значень:")
print(mean(vecor_without_na))
print("Середнє значення всіх елементів цього вектору з NA значеннями:")
print(mean(z))
```
Результат:
```
[1] "Всі елементи, які не NA: "
[1] 1 2 3 4 5
[1] "Середнє значення всіх елементів цього вектору без NA значень:"
[1] 3
[1] "Середнє значення всіх елементів цього вектору з NA значеннями:"
[1] NA
```