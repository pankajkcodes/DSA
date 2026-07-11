/*
   Count Smaller Elements for Each Number

   Given an array of integers `nums`, the task is to determine for every element `nums[i]` how many numbers in the
   array are smaller than it. Specifically, for each `nums[i]`, count the number of indices `j` such that `j != i`
   and `nums[j] < nums[i]`.

   Return the results in an array of the same length.

   Example 1:

   Input: nums = [5, 0, 10, 10, 7]
   Output: [1, 0, 3, 3, 2]

 */

void main() {
  smallerNumbersThanCurrent(List<int> nums) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      int count = 0;
      // Take first element and compare with others
      for (int j = 0; j < nums.length; j++) {
        if (nums[j] < nums[i]) {
          count++;
        }
      }
      result.add(count);
    }

    return result;
  }

  print(
    "smallerNumbersThanCurrent-> ${smallerNumbersThanCurrent([5, 0, 10, 10, 7])}",
  );
}
