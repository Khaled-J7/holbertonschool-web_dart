List<double> convertToF(List<double> temperaturesInC) {
  // Use .map() to transform each Celsius temperature.
  List<double> temperaturesInF = temperaturesInC.map((celsius) {
    // 1. Convert the Celsius value to Fahrenheit.
    double fahrenheit = (celsius * 9 / 5) + 32;

    // 2. Round the result to two decimal places.
    double roundedFahrenheit = (fahrenheit * 100).round() / 100;

    // 3. Return the final rounded value for the new list.
    return roundedFahrenheit;
  }).toList(); // 4. Convert the result of the map back into a List.

  // 5. Return the new list.
  return temperaturesInF;
}