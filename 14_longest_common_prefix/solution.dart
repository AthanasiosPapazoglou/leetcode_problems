class Solution {
  String longestCommonPrefix(List<String> strs) {
    String answer = "";
    String shortestWord = "";
    int shortestWordLength = 201;
    bool noPrefix = false;

    for (int i = 0; i < strs.length; i++) {
      if (strs[i].length < shortestWordLength) {
        shortestWord = strs[i];
        shortestWordLength = shortestWord.length;
      }
    }

    answer = shortestWord;

    for (int i = 0; i < strs.length; i++) {
      if (noPrefix) {
        break;
      }

      if (strs[i] != shortestWord) {
        for (int j = 0; j < shortestWordLength; j++) {
          if (j == 0 && shortestWord[j] != strs[i][j]) {
            noPrefix = true;
            answer = "";
            break;
          }

          if (strs[i][j] != shortestWord[j]) {
            answer = shortestWord.substring(0, j);
            break;
          }
        }
      }
    }
    return answer;
  }
}
