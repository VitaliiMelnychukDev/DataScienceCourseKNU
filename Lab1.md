# Laboratory work 1

### 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```
character_variable <- "Hello World!"
numeric_variable <- 5.25
integer_variable <- 5L
complex_variable <- 1 + 3i
logical_variable <- T
```
### 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
   2.71, 0, 13; 100 значень TRUE.
```
sequence_vector <- 5:75
variables_vector <- c(3.14,2.71,0,13)
true100_vector <- rep(T, times=100)
```
### 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
<table>
<tbody>
<tr>
<td>0.5</td><td>1.3</td><td>3.5</td>
</tr>
<tr>
<td>3.9</td><td>131</td><td>2.8</td>
</tr>
<tr>
<td>0</td><td>2.2</td><td>4.6</td>
</tr>
<tr>
<td>2</td><td>7</td><td>5.1</td>
</tr>
</tbody>
</table>

Матриця створена використовуючи matrix функцію:
```
matrix_elements_vector <- c(0.5, 1.3,3.5, 3.9, 131, 2.8, 0, 2.2, 4.6, 2, 7, 5.1)
matr <- matrix(matrix_elements_vector, nrow = 4, ncol = 3, byrow = TRUE)
print(matr)
```
Результат:
```
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
Матриця створена використовуючи rbind функцію:
```
r1_rbindm <- c(0.5, 1.3,3.5)
r2_rbindm <- c(3.9, 131, 2.8)
r3_rbindm <- c(0, 2.2, 4.6)
r4_rbindm <- c(2, 7, 5.1)
rbindm <- rbind(r1_rbindm, r2_rbindm, r3_rbindm, r4_rbindm)
print(rbindm)
```
```
          [,1]  [,2] [,3]
r1_rbindm  0.5   1.3  3.5
r2_rbindm  3.9 131.0  2.8
r3_rbindm  0.0   2.2  4.6
r4_rbindm  2.0   7.0  5.1
```

### 4. Створити довільний список (list), в який включити всі базові типи.
```
list_with_based_types <- list(1L, 2.3, "test", T, 1 + 1i)
print(list_with_based_types)
```
Результат
```
[[1]]
[1] 1

[[2]]
[1] 2.3

[[3]]
[1] "test"

[[4]]
[1] TRUE

[[5]]
[1] 1+1i
```
### 5. Створити фактор з трьома рівнями «baby», «child», «adult».
```
people <- c("baby", "adult", "child", "baby", "child", "adult", "adult")
people_factor_levels <- c("baby", "child", "adult")
people_factor <- factor(people, people_factor_levels)
print(people_factor)
```
Результат:
```
[1] baby  adult child baby  child adult adult
Levels: baby child adult
```
### 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
```
vector_with_na <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
first_na <- match(NA, vector_with_na)
count_na <- sum(is.na(vector_with_na))
cat('Index of first "NA" in vector is', first_na)
cat('\nQuantity of NA in vector is',count_na)
```
Результат:
```
Index of first "NA" in vector is 5
Quantity of NA in vector is 3
```

### 7. Створити довільний data frame та вивести в консоль.
```
First_name <- c("Andriy", "Cristiano")
Last_name <- c("Shevchenko", "Ronaldo")
football_players <- data.frame(first_name = First_name, last_name = Last_name)
print(football_players)
```
Результат:
```
  first_name  last_name
1     Andriy Shevchenko
2  Cristiano    Ronaldo
```
### 8. Змінити імена стовпців цього data frame.
```
names(football_players) <- c("first_name_v2", "last_name_v2")
print(football_players)
```
Результат:
```
  first_name_v2 last_name_v2
1        Andriy   Shevchenko
2     Cristiano      Ronaldo
```