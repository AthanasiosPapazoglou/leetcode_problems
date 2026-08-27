class Solution {
  int romanToInt(String s) {
    int solution = 0;

    Map<String, int> board = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };

    // Map<String, int> count = {
    //         "I": 0, //1
    //         "V": 0, //5
    //         "X": 0, //10
    //         "L": 0, //50,
    //         "C": 0, //100,
    //         "D": 0, //500,
    //         "M": 0, //1000
    //     };

    for (int i = 0; i < s.length; i++) {
      if (i == s.length - 1) {
        solution = solution + board[s[i]]!;
      } else if (i < s.length - 1) {
        if (board[s[i]]! < board[s[i + 1]]!) {
          switch (s[i]) {
            case "I":
              switch (s[i + 1]) {
                case "V":
                  solution = solution + 4;
                  i++;
                  break;
                case "X":
                  solution = solution + 9;
                  i++;
                  break;
              }
              break;
            case "X":
              switch (s[i + 1]) {
                case "L":
                  solution = solution + 40;
                  i++;
                  break;
                case "C":
                  solution = solution + 90;
                  i++;
                  break;
              }
              break;
            case "C":
              switch (s[i + 1]) {
                case "D":
                  solution = solution + 400;
                  i++;
                  break;
                case "M":
                  solution = solution + 900;
                  i++;
                  break;
              }
              break;
          }
        } else {
          solution = solution + board[s[i]]!;
        }
      } else {
        solution = solution + board[s[i]]!;
      }
    }

    return solution;
  }
}
