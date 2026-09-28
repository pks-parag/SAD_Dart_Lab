class Temperature {
  double _celsiusTemperature = 0.0;

  set celsiusValue(double value) {
    _celsiusTemperature = value;
  }

  double get fahrenheitValue {
    return (_celsiusTemperature * 9 / 5) + 32;
  }
}

void main() {
  Temperature weatherReport = Temperature();
  weatherReport.celsiusValue = 37.0;

  print("Temperature in Fahrenheit: ${weatherReport.fahrenheitValue.toStringAsFixed(2)}°F");
}
