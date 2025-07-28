import '6-password.dart';

class User extends Password{
  int id;
  String name;
  int age;
  double height;

  // The User constructor now also accepts 'user_password'.
  // It uses `super(password: user_password)` to pass the password
  // value up to the parent Password class's constructor.
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : super(password: user_password);

  // The user_password getter simply returns the password from the parent class.
  String get user_password {
    return super.password;
  }

  // The user_password setter updates the password in the parent class.
  set user_password(String newPassword) {
    super.password = newPassword;
  }

  // The toJson method should NOT include the password for security.
  Map<String, dynamic> toJson() {
    // Create and return a map literal & The values are the actual values from this object's properties
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  // The fromJson factory constructor creates a User instance from a map.
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }


  // The overridden toString method now includes the password validity check.
  @override
  String toString() {
    // We call this.isValid() which is the method inherited from the Password class.
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
