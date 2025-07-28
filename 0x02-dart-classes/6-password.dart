class Password {
  String _password = '';

  // Constructor with a named parameter
  Password({required String password}) : _password = password;

  // Getter for the password
  String get password {
    return _password;
  }

  // Setter for the password
  set password(String newPassword) {
    _password = newPassword;
  }

  // isValid method remains the same
  bool isValid() {
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

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
