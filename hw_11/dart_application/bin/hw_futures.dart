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
  final name = await fetchName();
  print('My name is $name');
  final age = await fetchAge();
  print('My age is $age');
}
