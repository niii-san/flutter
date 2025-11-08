abstract class Shape {
  double calculateArea();
  double calculateHeight();

  String displayName() {
    return "Shape";
  }
}

class Circle implements Shape {
  final double length;
  final double breadth;
  final double height;
  final double r;
  String name = "Circle";

  Circle(this.length, this.breadth, this.height, this.r);

  @override
  double calculateArea() {
    return 3.14 * (r * r);
  }

  @override
  double calculateHeight() {
    return height;
  }

  double calculateDiameter() {
    return 2 * r;
  }

  @override
  String displayName() {
    return name;
  }
}

class Rectangle implements Shape {
  final double length;
  final double breadth;
  String name = "Rectangle";

  Rectangle(this.length, this.breadth);

  @override
  double calculateArea() {
    return length * breadth;
  }

  @override
  double calculateHeight() {
    return length / breadth;
  }

  @override
  String displayName() {
    return name;
  }
}

void main() {
  Circle c1 = Circle(0, 0, 0, 20);
  Rectangle r1 = Rectangle(90, 50);

  print("Area of circle: ${c1.calculateArea()}");
  print("Area of rectangle: ${r1.calculateArea()}");
}
