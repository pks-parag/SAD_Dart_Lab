class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  // Getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  // Setters
  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set price(double price) => _price = price;

  void printDetails() {
    print("Camera ID: $_id, Brand: $_brand, Color: $_color, Price: \$$_price");
  }
}

void main() {
  Camera c1 = Camera(1, "Sony", "Black", 1200);
  Camera c2 = Camera(2, "Canon", "Silver", 950);
  Camera c3 = Camera(3, "Nikon", "Black", 1100);

  c1.printDetails();
  c2.printDetails();
  c3.printDetails();
}
