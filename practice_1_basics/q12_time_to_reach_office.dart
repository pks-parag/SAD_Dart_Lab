void main() {
  double distance = 25.0; // in km
  double speed = 40.0;    // in km/h
  
  // time = (distance / speed) hours, convert to minutes by multiplying by 60
  double timeInMinutes = (distance / speed) * 60;
  print("Time taken to reach office: $timeInMinutes minutes");
}
