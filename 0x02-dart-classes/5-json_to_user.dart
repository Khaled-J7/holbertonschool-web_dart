class User {
  int id;
  String name;
  int age;
  double height;

  // 1. The main constructor is updated to include 'id'.
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  // 2. The 'toJson' method is also updated to include 'id'.// 2. The 'toJson' method is also updated to include 'id'.
  Map<String, dynamic> toJson() {
    // Create and return a map literal & The values are the actual values from this object's properties
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  // 3. The new static 'fromJson' method.
  static User fromJson(Map<dynamic, dynamic> userJson) {
    // It takes a map, extracts the values and uses them
    // to create and return a new User instance
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // 4. The overridden 'toString' method.
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
