void main() {
  print("Waiting 2 seconds...");
  Future.delayed(Duration(seconds: 2), () {
    print("Current Time: ${DateTime.now()}");
  });
}
