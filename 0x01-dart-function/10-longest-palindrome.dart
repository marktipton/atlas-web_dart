String longestPalindrome(String s) {
  int n = s.length;
  if (n == 0) return "";

  int start = 0;
  int maxLen = 1;

  for (int i = 0; i < n; i++) {
    // Check for odd-length palindromes centered at i
    int low = i;
    int high = i;

    while (low >= 0 && high < n && s[low] == s[high]) {
      int currLen = high - low + 1;
      if (currLen > maxLen) {
        start = low;
        maxLen = currLen;
      }
      low--;
      high++;
    }

    // Check for even-length palindromes centered between i and i + 1
    low = i;
    high = i + 1;

    while (low >= 0 && high < n && s[low] == s[high]) {
      int currLen = high - low + 1;
      if (currLen > maxLen) {
        start = low;
        maxLen = currLen;
      }
      low--;
      high++;
    }
  }

  return s.substring(start, start + maxLen);
}
