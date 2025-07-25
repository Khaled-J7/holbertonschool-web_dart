// Helper function from the previous task. We need this.
bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  String longest = "";

  // The outer loop picks the starting character of the substring.
  for (int i = 0; i < s.length; i++) {
    // The inner loop picks the ending character.
    for (int j = i; j < s.length; j++) {
      // Get the substring from start (i) to end (j).
      // We use j + 1 because the end index is exclusive.
      String sub = s.substring(i, j + 1);

      // Check if this substring is a valid palindrome and if it's
      // longer than the longest one we've found so far.
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }

  // After checking all possibilities, if longest is still empty,
  // it means no palindrome was found. Otherwise, return the longest one.
  return longest.isEmpty ? 'none' : longest;
}
