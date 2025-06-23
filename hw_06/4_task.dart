void main() {
  double temperature = 36.6;

  String weather = temperature > 25 ? 'Тепло' : 'Прохолодно';
  print(weather);

  weather = temperature < 10 ? 'Дуже холодно' : weather;
  print(weather);
}
