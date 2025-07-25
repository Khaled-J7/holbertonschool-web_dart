bool isPalindrome(String s) {
  // The easiest way to solve this is to reverse the string and compare it to the original.
  // First, check if the string's length is less than 3.
  // If it is, it cannot be a palindrome according to the rules
  if (s.length < 3) {
    return false;
  }

  // To check if it's a palindrome, we can reverse the string and
  // see if it's identical to the original.
  String reversedString = s.split('').reversed.join();

  // Return true if the original and reversed strings are the same,
  // otherwise return false.
  return s == reversedString;
}
