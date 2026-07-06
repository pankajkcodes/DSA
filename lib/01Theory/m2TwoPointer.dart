/*
TWO POINTER
│
├── Use 2 indexes
│
├── Goal
│     ├── Reduce O(n²)
│     └── Reach O(n)
│
├── Types
│     │
│     ├── Opposite Direction
│     │      ├── Pair Sum
│     │      ├── Palindrome
│     │      └── Sorted Arrays
│     │
│     └── Same Direction
│            ├── Sliding Window
│            ├── Subarray
│            └── Substring
│
├── Key Logic
│     ├── Move Left → increase
│     └── Move Right → decrease
│
└── Used In
      ├── Arrays
      ├── Strings
      └── Linked Lists

 */

void main() {
  /*

  int left = 0;
  int right = arr.length - 1;

  while (left < right) {

    if (condition) {
      left++;
    } else {
      right--;
    }
  }*/

  bool twoPointer(List<int> arr, int target) {
    int left = 0;
    int right = arr.length - 1;

    while (left < right) {
      int sum = arr[left] + arr[right];

      if (sum == target) {
        return true;
      } else if (sum < target) {
        left++; // increase sum
      } else {
        right--; // decrease sum
      }
    }

    return false;
  }

  List<int> arr = [1, 2, 3, 4, 6];

  bool ans = twoPointer(arr, 6);

  print(ans);
}
