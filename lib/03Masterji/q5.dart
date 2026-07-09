/*
    Remove Duplicates From Sorted Array
    Given an integer array `nums` sorted in non-decreasing order, remove the duplicates in-place such that each
    unique element appears only once. The relative order of the elements should be maintained.
    Return the number of unique elements in `nums`.

    Consider the number of unique elements of `nums` to be `k`. To be accepted, you need to do the following:

    - Modify the array `nums` such that the first `k` elements contain the unique elements in the initial order of `nums`.
    - The remaining elements beyond `k` are irrelevant.
    - Return `k`.

    Example 1: Input: nums = [1,1,2], Output: 2, nums = [1,2,_]
    Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
    It does not matter what you leave beyond the returned k (hence they are underscores).


 */

void main() {
  removeDuplicates(List<int> nums) {
    // nums: integer array sorted in non-decreasing order
    // Returns the number of unique elements
    Map<int, int> uniques = {};

    nums.forEach((key) {
      if (!uniques.containsKey(key)) {
        uniques[key] = 1;
      }
    });

    print("Unique elements: ${uniques.keys.toList()}");

    return uniques.length;
  }

  List<int> nums1 = [1, 1, 2];
  List<int> nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  List<int> nums3 = [1, 1, 2];

  print("Input: $nums1, Output: ${removeDuplicates(nums1)}");
}
