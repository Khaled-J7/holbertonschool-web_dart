int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calculate the total score for Team A
  // We use `?? 0` as a safeguard in case a key is missing from the map.
  int scoreA =
      (teamA['Free throws'] ?? 0) * 1 +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;

  // Calculate the total score for Team B
  int scoreB =
      (teamB['Free throws'] ?? 0) * 1 +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;

  // Compare the final scores and return the result
  if (scoreA > scoreB) {
    return 1;
  } else if (scoreB > scoreA) {
    return 2;
  } else {
    return 0;
  }
}
