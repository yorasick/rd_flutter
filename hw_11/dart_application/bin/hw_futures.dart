Future<String> fetchName() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Yura';
}

void main() async {
  final name = await fetchName();
  print('My name is $name');
}
