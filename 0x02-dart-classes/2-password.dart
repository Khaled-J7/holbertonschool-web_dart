class Password {
  String password = '';

  // Define the validation method
  bool isValid() {
    // We use regular expressions to check for character types
    // A regular expression is a pattern used to match character combinations in strings
    // The r before the string makes it a "raw" string, which prevents backslashes from being interpreted as escape characters
    bool hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
    bool hasLowercase = RegExp(r'[a-z]').hasMatch(password);
    bool hasNumber = RegExp(r'[0-9]').hasMatch(password);

    // Check all conditions:
    // - Length must be between 8 and 16
    // - Must contain uppercase, lowercase, and numbers
    if (password.length >= 8 &&
        password.length <= 16 &&
        hasUppercase &&
        hasLowercase &&
        hasNumber) {
      return true;
    }

    // If any condition fails, return false.
    return false;
  }

  // Override the default toString() method.
  // Replacing the default behavior of a method: toString() from the parent class (Object)
  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
