void main() {
  print(Circle.pi);
  print(Circle.maxRadius);
  Circle circle1 = Circle(3);
  print(circle1.calculateArea());
}

class Circle {
  static const double pi = 3.14; // static Variable erstellen
  static int maxRadius = 10; // static Variable erstellen
  double radius;
  Circle(this.radius);

  double calculateArea() {
    return pi * radius * radius;
  }
}
