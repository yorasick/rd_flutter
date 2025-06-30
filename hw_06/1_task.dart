void main() {
  double length = 30.9;
  double width = 18.4;

  double area = length * width;
  print('Area of rectangle: $area');

  double perimeter = 2 * (length + width);
  print('Perimeter of rectangle: $perimeter');

  int count = area ~/ 1;
  print('Count of tiles: $count');
}
