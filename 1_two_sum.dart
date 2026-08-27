class Solution {
  List<int> twoSum(List<int> nums, int target) {
    bool solutionFound = false;
    late int iterationIndex;
    late int explorationIndex;

    for (iterationIndex = 0; iterationIndex < nums.length; iterationIndex++) {
      for (explorationIndex = 0; explorationIndex < nums.length; explorationIndex++) { 
        if (iterationIndex == explorationIndex) {
        }
         else {
          if (nums[iterationIndex] + nums[explorationIndex] == target) {
            solutionFound = true;
            break;
          }
        }
      }
      if (solutionFound) {
        break;
      }
    }
      return <int>[iterationIndex, explorationIndex];
  }
}
