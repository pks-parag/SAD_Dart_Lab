import 'dart:math';

class Shape {
  double calculateArea() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double rectWidth;
  double rectHeight;

  Rectangle(this.rectWidth, this.rectHeight);

  @override
  double calculateArea() {
    return rectWidth * rectHeight;
  }
}

class Circle extends Shape {
  double radiusDistance;

  Circle(this.radiusDistance);

  @override
  double calculateArea() {
    return pi * radiusDistance * radiusDistance;
  }
}

void main() {
  Shape firstShape = Rectangle(10, 4);
  Shape secondShape = Circle(7);

  print("Rectangle Area: ${firstShape.calculateArea()}");
  print("Circle Area: ${secondShape.calculateArea().toStringAsFixed(2)}");
}
