abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  String brandName;

  Fan(this.brandName);

  @override
  void turnOn() {
    print("$brandName fan is spinning now.");
  }

  @override
  void turnOff() {
    print("$brandName fan stopped.");
  }
}

void main() {
  Appliance ceilingFan = Fan("Panasonic");
  ceilingFan.turnOn();
  ceilingFan.turnOff();
}
