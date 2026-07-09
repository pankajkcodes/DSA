/*
    Find Duplicates in Array

    Example 1: Input: nums = [1,2,3,1], Output: true
    Explanation: The number '1' appears twice.

    Example 2: Input: nums = [1,2,3,4], Output: false
    Explanation: All numbers are distinct.

    Example 3:
    Input: nums = [1,1,1,3,3,4,3,2,4,2]
    Output: true
    Explanation: The number '1' appears more than once.

 */

void main() {
  hasDuplicates(List<int> nums) {
    Map<int, int> hasSeen = {};

    bool isSeen = false;
    nums.forEach((num) {
      if (hasSeen.containsKey(num) && isSeen == false) {
        hasSeen[num] = hasSeen[num]! + 1;
        isSeen = true;
      } else {
        hasSeen[num] = 1;
      }
    });

    return isSeen;
  }

  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];

  print("Input: $nums2, Output: ${hasDuplicates(nums2)}");
}
