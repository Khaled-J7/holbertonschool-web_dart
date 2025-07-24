double calculateArea(double height, double base) {
  // Calculate the area of the triangle.
  double area = (height * base) / 2;

  // To round to two decimal places, we can multiply by 100,
  // round to the nearest integer, and then divide by 100.0.
  double roundedArea = (area * 100).round() / 100;

  return roundedArea;
}
