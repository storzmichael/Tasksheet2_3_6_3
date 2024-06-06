void main() {
  Circle circle1 = Circle(3); // Reihenfolge ändern
  print(circle1.pi); // auf die Objekt Attribute zugreifen
  print(circle1.maxRadius); // auf die Objekt Attribute zugreifen
  print(circle1.calculateArea());
}

class Circle {
  double pi = 3.14;
  int maxRadius = 10;
  double radius;
  Circle(this.radius);

  double calculateArea() {
    return pi * radius * radius;
  }
}
