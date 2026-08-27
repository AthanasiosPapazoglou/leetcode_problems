class Solution {
  bool isPalindrome(int x) {
    List<String> characters = x.toString().split('');
    bool answer = true;
    for (int i = 0; i < ((characters.length)/ 2).floor(); i++){
        if(characters[i] != characters[characters.length -i -1]){
            answer = false;
        }
    }
    return answer;
  }
}