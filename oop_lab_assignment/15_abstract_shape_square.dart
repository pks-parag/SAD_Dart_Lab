abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  double sideLength;

  Square(this.sideLength);

  @override
  double calculateArea() {
    return sideLength * sideLength;
  }
}

void main() {
  Square box = Square(8.0);
  print("Square Area: ${box.calculateArea()} sq units");
}
