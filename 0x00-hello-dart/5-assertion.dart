void main(List<String> args) {
  // 1. Get the first command-line argument
  String scoreString = args[0];

  // 2. Parse the string into an integer
  int nb = int.parse(scoreString);

  // 3. Assert that the score is greater than or equal to 80.
  // If this condition is false, an error is thrown with the given message
  assert(nb >= 80, 'The score must be bigger or equal to 80');
  
  // 4. If only the assertion passes
  print('You Passed');
}