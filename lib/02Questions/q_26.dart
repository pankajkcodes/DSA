/*
   Longest Consecutive Sequence in an Array

   Problem Statement: Given an array nums of n integers.

   Return the length of the longest sequence of consecutive integers. The integers in this sequence can
   appear in any order.

   Example 1: Input: nums = [100, 4, 200, 1, 3, 2]  Output: 4
   Explanation: The longest sequence of consecutive elements in the array is [1, 2, 3, 4], which has a length
   of 4. This sequence can be formed regardless of the initial order of the elements in the array.

   Example 2: Input: nums = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]  Output: 9
   Explanation: The longest sequence of consecutive elements in the array is [0, 1, 2, 3, 4, 5, 6, 7, 8],
   which has a length of 9.


 */
void main() {
  longestConsecutive(List<int> arr) {
    List<int> sortedArr = arr;

    sortedArr.sort((a, b) => a.compareTo(b));

    print("sorted arr : $sortedArr");

    int longestLength = 0;

    List<int> newList = [];

    for (int i = 0; i < sortedArr.length; i++) {
      for (int j = i+1; j < sortedArr.length; j++) {
        int firstItem = sortedArr[i];
        int secondItem = sortedArr[j];

        print("First: ${firstItem}, Second: ${secondItem}");

        if (firstItem == secondItem - 1) {
          newList.add(firstItem);
          longestLength++;
        }
      }
    }
    print("LongestLength : $longestLength");
    print("newList : $newList");
  }

  List<int> nums1 = [100, 4, 200, 1, 3, 2]; // Output: 4
  List<int> nums2 = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]; // Output: 9
  longestConsecutive(nums1);
}
