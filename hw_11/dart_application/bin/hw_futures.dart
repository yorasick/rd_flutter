import 'dart:math';

Future<String> fetchName() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Yura';
}

Future<String> fetchAge() {
  return Future.delayed(
    const Duration(milliseconds: 1500),
    () => (Random().nextInt(20) + 15).toString(),
  );
}

void main() async {
  final stopwatch = Stopwatch()..start();
  final name = await fetchName();
  print('My name is $name');
  print('fetchName() виконано за ${stopwatch.elapsedMilliseconds} мс');
  stopwatch.reset();
  final age = await fetchAge();
  print('My age is $age');
  print('fetchAge() виконано за ${stopwatch.elapsedMilliseconds} мс');
  stopwatch.stop();
}
