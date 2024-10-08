String longestUniqueSubstring(String str) {
  int n = str.length;
  int maxLength = 0;
  int start = 0;
  int longestStart = 0;

  List<int> lastIndex = List.filled(256, -1);

  for (int end = 0; end < n; end++) {
    int charIndex = str.codeUnitAt(end);

    start = start > lastIndex[charIndex] ? start : lastIndex[charIndex] + 1;

    if (maxLength < end - start + 1) {
      maxLength = end - start + 1;
      longestStart = start;
    }
    lastIndex[charIndex] = end;
  }
  return str.substring(longestStart, longestStart + maxLength);
}
