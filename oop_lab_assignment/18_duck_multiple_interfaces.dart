abstract class Flyable {
  void flyInSky();
}

abstract class Swimmable {
  void swimInWater();
}

class Duck implements Flyable, Swimmable {
  String birdName;

  Duck(this.birdName);

  @override
  void flyInSky() {
    print("$birdName can fly short distances across the pond.");
  }

  @override
  void swimInWater() {
    print("$birdName is gliding smoothly on the lake water.");
  }
}

void main() {
  Duck mallard = Duck("Mallard Duck");
  mallard.flyInSky();
  mallard.swimInWater();
}
