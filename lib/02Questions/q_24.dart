/*
    Problem Description:
    You are given a sorted array of distinct integers and a target value.
    Your task is to find where the target value should be placed in the array to maintain the sorted order.

    If the target value already exists in the array, return its index. If the target value doesn't exist,
    return the index where it would be inserted to keep the array sorted.

    For example:
    If nums = [1, 3, 5, 6] and target = 5, the function should return 2 because 5 exists at index 2

    If nums = [1, 3, 5, 6] and target = 2, the function should return 1 because 2 would be inserted
    at index 1 to maintain sorted order

    If nums = [1, 3, 5, 6] and target = 7, the function should return 4 because 7 would be inserted
    at the end he algorithm must have O(log n) runtime complexity,
    which means you need to use binary search rather than a linear scan through the array.

    The solution uses binary search to efficiently find the insertion position. It maintains two pointers
    l (left) and r (right) to define the search range. In each iteration, it calculates the middle index and
    compares nums[mid] with the target. If nums[mid] >= target, it means the target should be inserted at or
    before the middle position, so the search continues in the left half. Otherwise, the search continues in
    the right half. When the loop ends, l points to the correct insertion position.

 */

void main() {
  int searchInsert(List<int> arr, int target) {

    int left = 0;
    int right = arr.length - 1;
    int mid = -1;

    while (left <= right) {
      mid = left + ((right - left) ~/ 2);

      print("Mid: Index=> $mid, Value=> ${arr[mid]}, Target=> $target");
      if (arr[mid] == target) {
        // print("Condition I: value ${arr[mid]}");
        return mid;
      } else if (arr[mid] < target) {
        // Search in right so change left
        left = mid + 1;
        // print("Condition II: value ${arr[mid]}, target :$target");
      } else {
        right = mid - 1;
        // print("Condition III: value ${arr[mid]}");
      }

      // print("Left  : $left, Mid: $mid, Right: $right");
    }

    return left;
  }

  List<int> nums1 = [1, 3, 5, 6];
  int target1 = 5; // Output: 2
  List<int> nums2 = [1, 3, 5, 6];
  int target2 = 2; // Output: 1
  List<int> nums3 = [1, 3, 5, 6];
  int target3 = 7; // Output: 4

  print("Input=> $nums1, Target=> $target1, Output: ${searchInsert(nums1, target1)}");
  print("Input=> $nums2, Target=> $target2, Output: ${searchInsert(nums2, target2)}");
  print("Input=> $nums3, Target=> $target3, Output: ${searchInsert(nums3, target3)}");
}
