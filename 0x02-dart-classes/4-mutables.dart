class Password {
  // The password property is now private
  String _password;

  // A constructor to initialize the private property
  Password({required String password}) : _password = password;

  // Getter: Provides public read access to the private property: _password
  String get password {
    return _password;
  }

  // Setter: Provides public write accees to the private property: _password
  set password(String newPassword) {
    _password = newPassword;
  }
  
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
