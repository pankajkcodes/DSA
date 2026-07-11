void main() {
  checkForDuplicates(nums) {
    // nums: integer array
    // Returns true if any value appears at least twice, otherwise false

    Map seen = Map();
    for (int i = 0; i < nums.length; i++) {
      if (seen.containsKey(nums[i])) {
        return true;
      } else {
        seen[nums[i]] = true;
      }
    }
    return false;
  }

  List<int> arr1 = [1, 3, 4, 4];
  List<int> arr2 = [1, 3, 4, 5];

  print("Input: Output:${checkForDuplicates(arr2)}");
}
