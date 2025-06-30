void main() {
  int number = 10;

  while (number > 0) {
    if (number % 2 == 0) {
      print('Even number: $number');
    } else {
      print('Odd number: $number');
    }
    number--;
  }
}
