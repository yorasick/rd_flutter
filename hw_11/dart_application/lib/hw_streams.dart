import 'dart:async';

Future<void> streamFromIterable() async {
  print('----------------Stream from Iterable----------------');
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  await for (final number in stream) {
    print(number);
  }

  final stream2 = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream2.listen(
    (number) {
      print(number);
    },
    onDone: () {
      print('Done');
    },
    onError: (error) {
      print('Error: $error');
    },
  );
}

Future<void> reverseCountdown() async {
  print('----------------Reverse Countdown----------------');
  final stream = Stream.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(10);

  await for (final number in stream) {
    print('$number...');
  }
}

void streamFromStreamController() {
  print('----------------Stream from StreamController----------------');
  final streamController = StreamController<String>();

  streamController
    ..add('Hello')
    ..add('World')
    ..add('Dart');

  streamController.stream.listen(
    (data) {
      print(data);
    },
    onDone: () {
      print('Stream was finished');
    },
  );

  streamController.close();
}

Future<void> main() async {
  await streamFromIterable();
  await reverseCountdown();
  streamFromStreamController();
}
