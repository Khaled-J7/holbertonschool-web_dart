void outer(String name, String id) {
  // Define the nested function 'inner'
  String inner() {
    // Split the name into two parts, e.g., ["Youssef", "Belhadj"]
    var nameParts = name.split(' ');
    
    // Construct the formatted name: "B.Youssef"
    // nameParts[1][0] gets the first character of the second word.
    // nameParts[0] is the first word.
    var formattedName = '${nameParts[1][0]}.${nameParts[0]}';
    
    // Return the final string using the variables from the outer scope
    return 'Hello Agent $formattedName your id is $id';
  }

  // Call the inner function and print its result
  print(inner());
}