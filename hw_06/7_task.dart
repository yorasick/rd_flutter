void main() {
  int dayNumber = 6;

  switch (dayNumber) {
    case 1:
      print('Понеділок');
      break;
    case 2:
      print('Вівторок');
      break;
    case 3:
      print('Середа');
      break;
    case 4:
      print('Четвер');
      break;
    case 5:
      print('П\'ятниця');
      break;
    case 6:
      print('Субота');
      print('Вихідний день 🎉');
      break;
    case 7:
      print('Неділя');
      print('Вихідний день 🎉');
      break;
    default:
      print('Невірний номер дня');
      break;
  }
}
