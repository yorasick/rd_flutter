void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      continue;
    }

    if (i > 15) {
      break;
    }

    print(i);
  }
}
