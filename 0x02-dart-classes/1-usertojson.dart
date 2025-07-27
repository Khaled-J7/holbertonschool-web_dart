class User {
  String name;
  int age;
  double height;

  // Create a constructor to initialize the properties and use named parameters ({}).
  // The 'required' keyword ensures that these values must be provided
  // when a User object is created.
  User({required this.name, required this.age, required this.height});

  // Define the toJson method.
  Map<String, dynamic> toJson() {
    // Create and return a map literal & The values are the actual values from this object's properties
    return {'name': name, 'age': age, 'height': height};
  }
}
