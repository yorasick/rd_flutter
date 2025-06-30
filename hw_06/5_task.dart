void main() {
  double score = 0;

  int correctAnswer = 17;
  int mistakes = 3;
  int totalQuestions = 20;

  // Додайте 10 балів за кожну правильну відповідь.
  score += correctAnswer * 10;

  // Відніміть 5 балів за кожну помилку.
  score -= mistakes * 5;

  // Збільшіть загальну кількість балів у 2 рази.
  score *= 2;

  // Поділіть бали на кількість запитань.
  score /= totalQuestions;

  print('Final score: $score');
}
