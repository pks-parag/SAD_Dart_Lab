class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }

  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Rectangle myRoom = Rectangle(15.5, 10.0);
  print("Area: ${myRoom.calculateArea()} sq units");
  print("Perimeter: ${myRoom.calculatePerimeter()} units");
}
