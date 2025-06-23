void main() {
  int examScore = 56;

  if (examScore >= 90) {
    print('Відмінно');
  } else if (examScore >= 75) {
    print('Добре');
  } else if (examScore >= 60) {
    print('Задовільно');
  } else {
    print('Незадовільно');
  }

  if (examScore < 20) {
    print('Повторити курс');
  }
}
