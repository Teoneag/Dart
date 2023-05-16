import 'dart:math';


class Point {
  num x = 0;
  num y = 0;
  num distanceFromCenter() {
    return sqrt(x * x + y * y);
  }
}

void main() {
  var point1 = Point();
  point1.x = 4;
  point1.y = 3;
  print(point1.distanceFromCenter());
}
