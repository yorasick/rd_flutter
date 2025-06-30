void main() {
  double number = 74.56;

  if (number > 50) {
    print('Number is greater than 50');

    if (number < 100) {
      print('Number is less than 100');
    } else {
      print('Number is greater than 100');
    }
  } else {
    print('Number is less than 50');
  }

  if (number % 5 == 0) {
    print('Number is divisible by 5');
  } else {
    print('Number is not divisible by 5');
  }
}
