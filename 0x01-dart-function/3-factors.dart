int fact(int f) {
  // If f is 0, 1, or any negative number, the factorial is 1
  if (f <= 1) {
    return 1;
  }
  // The Recursive Step.
  // If f is greater than 1, the factorial is f multiplied by the factorial of (f - 1)
  else {
    return f * fact(f - 1);
  }
}
