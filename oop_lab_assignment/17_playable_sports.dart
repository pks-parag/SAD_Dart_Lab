abstract class Playable {
  void playMatch();
}

class Football implements Playable {
  @override
  void playMatch() {
    print("Playing football: 90 minutes match on the pitch.");
  }
}

class Cricket implements Playable {
  @override
  void playMatch() {
    print("Playing cricket: T20 tournament match underway.");
  }
}

void main() {
  Playable matchOne = Football();
  Playable matchTwo = Cricket();

  matchOne.playMatch();
  matchTwo.playMatch();
}
