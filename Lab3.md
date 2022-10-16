# Лабораторна робота 3

### 1. Функція add2(x, y), яка повертає суму двох чисел.
```
add2 <- function(x, y) {
  x + y
}
print(add2(4,5))
```
Результат:
```
[1] 9
```
### 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
```
above <- function(x, n = 10) {
  x[x > n]
}
test_vector <- c(4, 7, 19, 43, 4, 16, 10)
print("Початковий вектор")
print(test_vector)
print("Елементи вектора більші за 6:")
print(above(test_vector, 6))
print("Елементи вектора більші за дефолтне значення:")
print(above(test_vector))
```
Результат:
```
[1] "Початковий вектор"
[1]  4  7 19 43  4 16 10
[1] "Елементи вектора більші за 6:"
[1]  7 19 43 16 10
[1] "Елементи вектора більші за дефолтне значення:"
[1] 19 43 16
```
### 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
```
my_ifelse <- function(x, exp, n) {
  if (exp == "<") {
    x[x < n]
  } else if (exp == ">") {
    x[x > n]
  } else if (exp == "<=") {
    x[x <= n]
  } else if (exp == ">=") {
    x[x >= n]
  } else if (exp == "==" ) {
    x[x == n]
  } else {
    return(x)
  }
}
test_vector <- c(4, 7, 19, 43, 4, 16, 10)

print("Початковий вектор")
print(my_ifelse(test_vector, 'not_existed', 10))
print("Значення менші 10:")
print(my_ifelse(test_vector, '<', 10))
print("Значення більші 10:")
print(my_ifelse(test_vector, '>', 10))
print("Значення менше рівні 10:")
print(my_ifelse(test_vector, '<=', 10))
print("Значення більше рівні 10:")
print(my_ifelse(test_vector, '>=', 10))
print("Значення рівні 10:")
print(my_ifelse(test_vector, '==', 10))
```
Результат:
```
[1] "Початковий вектор"
[1]  4  7 19 43  4 16 10
[1] "Значення менші 10:"
[1] 4 7 4
[1] "Значення більші 10:"
[1] 19 43 16
[1] "Значення менше рівні 10:"
[1]  4  7  4 10
[1] "Значення більше рівні 10:"
[1] 19 43 16 10
[1] "Значення рівні 10:"
[1] 10
```
### 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
```
columnmean <- function(x, removeNA = T) {
  average_each_column <- c()
  
  for (column_index in seq_len(ncol(x))) {
    column_average_value <- mean(x[, column_index], 0, removeNA)
    average_each_column[column_index] <- column_average_value
  }
  
  return(average_each_column)
}
test_matrix <- matrix(c(21,4,5,12,3,NA), nrow = 3, ncol = 2)
print("Початкова матриця:")
print(test_matrix)
print("Середнє значення стовпців матриці не враховуючи NA:")
print(columnmean(test_matrix))
print("Середнє значення стовпців матриці враховуючи NA:")
print(columnmean(test_matrix, NA))
test_data_frame <- data.frame(row1 = c(1:3), row2 = c(3, 6, 9), row3 = c(2, 4, NA))
print("Початковий фрейм:")
print(test_data_frame)
print("Середнє значення стовпців фрейму не враховуючи NA:")
print(columnmean(test_data_frame))
print("Середнє значення стовпців фрейму враховуючи NA:")
print(columnmean(test_data_frame, NA))
```
Результат:
```
[1] "Початкова матриця:"
     [,1] [,2]
[1,]   21   12
[2,]    4    3
[3,]    5   NA
[1] "Середнє значення стовпців матриці не враховуючи NA:"
[1] 10.0  7.5
[1] "Середнє значення стовпців матриці враховуючи NA:"
[1] 10 NA
[1] "Початковий фрейм:"
  row1 row2 row3
1    1    3    2
2    2    6    4
3    3    9   NA
[1] "Середнє значення стовпців фрейму не враховуючи NA:"
[1] 2 6 3
[1] "Середнє значення стовпців фрейму враховуючи NA:"
[1]  2  6 NA
```