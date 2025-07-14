Future<void> streamFromIterable() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  await for (final number in stream) {
    print(number);
  }
  print('--------------------------------');

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

Future<void> main() async {
  await streamFromIterable();
}
