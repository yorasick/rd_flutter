import 'dart:math';

import 'package:dart_collections_journey/names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runTask1();
  runTask2();
  runTask3();
}

void runTask1() {
  print('------------------- Task 1 -------------------');
  // 1. Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
  final List<int> numbers = List.generate(
    100,
    (index) => Random().nextInt(101),
  );

  // 2. Виведіть цей список на екран.
  print(numbers);
  print('-' * 10);

  // 3. Виведіть на екран 65-й елемент списку у форматі: '65-й елемент: [значення]'.
  print('65-й елемент: ${numbers[64]}');
  print('-' * 10);
  // 4.Вставте число 1000000000 на 50-ту позицію списку.
  numbers.insert(50, 1000000000);

  // 5. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  numbers.removeWhere((element) => [24, 45, 66, 88].contains(element));

  // 6. За допомогою циклу for переберіть список. Під час перебору:
  // Порахуйте суму всіх елементів, що діляться на 3 без залишку. Виведіть результат.
  int sum = 0;
  for (int number in numbers) {
    if (number % 3 == 0) {
      sum += number;
    }
  }
  print('Сума всіх елементів, що діляться на 3 без залишку: $sum');
  print('-' * 10);
  // 7. Створіть порожній список temp. За допомогою циклу for-in переберіть numbers.
  // Додайте до temp лише ті елементи, що діляться на 2 без залишку.
  final List<int> temp = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('Список елементів, що діляться на 2 без залишку');
  print(temp);
  print('-' * 10);
  // 8. Виведіть довжину списку temp.
  print(
    'Довжина списку елементів, що діляться на 2 без залишку: ${temp.length}',
  );
}

void runTask2() {
  print('------------------- Task 2 -------------------');
  final uniqueNames1 = Set.from(ukrainianNames1);
  final uniqueNames2 = Set.from(ukrainianNames2);

  final uniqueNames = uniqueNames1.union(uniqueNames2);
  print('Кількість унікальних імен: ${uniqueNames.length}');
  print('-' * 10);

  final uniqueNames1NotIn2 = uniqueNames1.difference(uniqueNames2);
  print('Імена, що є в uniqueNames1, але яких немає в uniqueNames2:');
  print(uniqueNames1NotIn2);
  print('-' * 10);

  final uniqueNames2NotIn1 = uniqueNames2.difference(uniqueNames1);
  print('Імена, що є в uniqueNames2, але яких немає в uniqueNames1:');
  print(uniqueNames2NotIn1);
}

void runTask3() {
  print('------------------- Task 3 -------------------');
  final wordGenerator = WordGenerator();
  final List<String> nounsList = List.generate(
    50,
    (index) => wordGenerator.randomNoun(),
  );
  print(nounsList);
  print('-' * 10);

  final Map<String, int> nounsMap = {};
  for (String noun in nounsList) {
    nounsMap[noun] = noun.length;
  }
  print(nounsMap);
  print('-' * 10);

  final Map<String, int> tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  print(tempNouns);
  print('-' * 10);

  print(tempNouns.keys);
}
