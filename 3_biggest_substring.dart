class Solution {
  int lengthOfLongestSubstring(String s) {
    List<String> substringCharacters = <String>[];
    int maxLength = 0;
    int currentLength = 0;

    for (int i = 0; i < s.length; i++) {
      if (!substringCharacters.contains(s[i])) {
        currentLength++;
        substringCharacters.add(s[i]);
      } else {
        int deletionIndex = substringCharacters.indexWhere(
          (item) => item == s[i],
        );

        String duplicateCharacter = substringCharacters[deletionIndex];

        for (int j = 0; j <= deletionIndex; j++) {
          substringCharacters.removeAt(0);
        }

        substringCharacters.add(s[i]);

        currentLength =
            substringCharacters.indexWhere((v) => v == duplicateCharacter) + 1;
      }

      if (maxLength < currentLength) {
        maxLength = currentLength;
      }
    }
    return maxLength;
  }
}
