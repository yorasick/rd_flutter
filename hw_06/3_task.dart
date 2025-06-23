// ignore_for_file: dead_code

void main() {
  bool hasMoney = true;
  bool isStoreOpen = false;

  // Перевірка чи можна зробити покупку (є гроші і магазин відкритий)
  if (hasMoney && isStoreOpen) {
    print("You can make a purchase!");
  }

  // Перевірка чи потрібно почекати (магазин закритий АБО немає грошей)
  if (!isStoreOpen || !hasMoney) {
    print("You need to wait to make a purchase.");
  }
}
