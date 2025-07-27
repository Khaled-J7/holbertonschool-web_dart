/// ⚠️ To make a property private in Dart, you simply prefix its name with an underscore (_).
/// ⚠️ Once a property is private, you can no longer access it directly from outside the file.
/// ⚠️ This forces you to use a constructor to set its initial value.
class Password {
  // The password property is now private
  String _password;

  // A constructor to initialize the private property
  Password({required String password}) : _password = password;

  // Update the validation method
  bool isValid() {
    // 3. The method now uses the private _password property for validation.
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    if (!RegExp(r'[A-Z]').hasMatch(_password)) {
      return false;
    }
    if (!RegExp(r'[a-z]').hasMatch(_password)) {
      return false;
    }
    if (!RegExp(r'[0-9]').hasMatch(_password)) {
      return false;
    }
    return true;
  }

  // Override the default toString() method.
  // Replacing the default behavior of a method: toString() from the parent class (Object)
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
