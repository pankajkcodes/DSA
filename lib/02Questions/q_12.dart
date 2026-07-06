/*
  Given an integer array nums, return true if any value appears at least twice in the array,
  and return false if every element is distinct.

  Example 1: Input: nums = [1,2,3,1], Output: true
  Explanation: The element 1 occurs at the indices 0 and 3.

  Example 2: Input: nums = [1,2,3,4], Output: false
  Explanation: All elements are distinct.

  Example 3: Input: nums = [1,1,1,3,3,4,3,2,4,2], Output: true


 */

void main() {
  bool containsDuplicate(List<int> nums) {
    // For every number:
    // Check whole number again
    // Count how many times it appears
    // If count == 2 → return true

    for (int i = 0; i < nums.length; i++) {
      int count = 0;
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }

      if (count == 2) {
        return true;
      }
    }

    return false;
  }

  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  List<int> nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];

  print("Output is : ${containsDuplicate(nums3)}");
}
