void main() {
  // Виведіть всі числа від 1 до 10.
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('-' * 10);

  // Виведіть всі парні числа від 1 до 10.
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  print('-' * 10);

  // Обчисліть суму чисел від 1 до 10.
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print(sum);
}
