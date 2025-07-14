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

Future<void> sequential() async {
  final stopwatch = Stopwatch()..start();
  final name = await fetchName();
  print('My name is $name');
  final int fetchNameExecTime = stopwatch.elapsedMilliseconds;
  print('fetchName() виконано за ${fetchNameExecTime} мс');
  stopwatch.reset();
  final age = await fetchAge();
  print('My age is $age');
  final int fetchAgeExecTime = stopwatch.elapsedMilliseconds;
  print('fetchAge() виконано за ${fetchAgeExecTime} мс');
  stopwatch.stop();
  print('Sequential execution time ${fetchNameExecTime + fetchAgeExecTime} ms');
}

Future<void> parallel() async {
  final stopwatch = Stopwatch()..start();
  await Future.wait([fetchName(), fetchAge()]).then((value) {
    print('My name is ${value[0]}');
    print('My age is ${value[1]}');
  });
  print('Parallel execution time ${stopwatch.elapsedMilliseconds} ms');
}

Future<String> delayedCountdown(int seconds) async {
  if (seconds <= 0) {
    throw Exception('Seconds must be greater than 0');
  }

  for (int i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(const Duration(seconds: 1));
  }

  return 'Start!';
}

void main() async {
  await sequential();
  print('--------------------------------');
  await parallel();
  print('--------------------------------');
  final result = await delayedCountdown(5);
  print(result);
}
