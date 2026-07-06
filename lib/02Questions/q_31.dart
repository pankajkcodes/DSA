/*
  Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of
  a given target value.

  If target is not found in the array, return [-1, -1].

  Example 1: Input: nums = [5,7,7,8,8,10], target = 8, Output: [3,4]

  Example 2: Input: nums = [5,7,7,8,8,10], target = 6, Output: [-1,-1]

  Example 3: Input: nums = [], target = 0, Output: [-1,-1]

 */

void main() {
  List<int> searchRange(List<int> nums, int target) {
    int first = -1;
    int last = -1;

    for (int i = 0; i < nums.length; i++) {
      // print("Number :${nums[i]}, Index:$i, Condition :${nums[i] == target}");

      if (first == -1 && nums[i] == target) {
        first = i;
      }

      if (nums[i] == target) {
        last = i;
      }
    }

    return [first, last];
  }

  List<int> searchRangeOpt(List<int> nums, int target) {
    int first = -1;
    int last = -1;

    int left = 0;
    int right = nums.length - 1;

    // find first
    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (nums[mid] == target) {
        first = mid;
        right = mid - 1; // move left
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    print("first : $first");

    left = 0;
    right = nums.length - 1;

    // find second
    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (nums[mid] == target) {
        last = mid;
        left = mid + 1; // move right
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    print("Last : $last");

    return [first, last];
  }

  List<int> nums1 = [5, 7, 7, 8, 8, 8, 10];
  List<int> nums2 = [5, 7, 7, 8, 8, 10];
  List<int> nums3 = [];

  int target = 8;

  print("Output= ${searchRangeOpt(nums1, target)}");
}
