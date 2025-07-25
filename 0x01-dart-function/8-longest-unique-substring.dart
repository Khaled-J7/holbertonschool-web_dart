String longestUniqueSubstring(String str) {
  String longestSub = "";
  String currentSub = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // Check if the current character is already in our current substring.
    int charIndex = currentSub.indexOf(char);

    // If the character is found (index is not -1), a repetition has occurred.
    if (charIndex != -1) {
      // Before updating the current substring, check if it's the longest we've seen so far.
      if (currentSub.length > longestSub.length) {
        longestSub = currentSub;
      }
      // "Slide the window": Start the new substring from the character
      // immediately after the first occurrence of the repeated character.
      currentSub = currentSub.substring(charIndex + 1);
    }

    // Add the current character to the current substring.
    currentSub += char;
  }

  // Final check: the longest substring might be at the very end of the string.
  if (currentSub.length > longestSub.length) {
    longestSub = currentSub;
  }

  return longestSub;
}
