
class Solution {
  ListNode? addTwoNumbers( ListNode? l1, ListNode? l2) {

    //Considering l1 to be the biggest array in the case where l1.length != l2.length

    ListNode resultList = <int>[];

    bool hasHolding = false;

    for (int i = 0; i < l1!.length; i++){

        int sum = 0;
        int remains = 0;
        if (i < l2!.length) {
            sum = hasHolding ? l1[i] + l2[i] : l1[i] + l2[i] + 1;
            hasHolding = sum > 9;
            remains = sum % 10;
        } else {
            sum = hasHolding ? l1[i] : l1[i] + 1;
            hasHolding = sum > 9;
            remains = 0;
        }
        
        resultList.add(hasHolding ? remains : sum);

        if(i == l1.length - 1 && hasHolding){
            resultList.add(1);
        }
    } 
    
    return resultList;
  }
}