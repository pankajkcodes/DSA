/*
   First & Last Position in Sorted Array

   First and Last Occurrences in Array: https://takeuforward.org/arrays/first-and-last-occurrences-in-array

   Problem Statement: Given a sorted array arr of n integers and a target value k. Write a program to find the indices
   of the first and the last occurrences of the target value. If the target is not found then return -1 as indices.

   Example 1:
   Input Format: n = 8, arr[] = {2, 4, 6, 8, 8, 8, 11, 13}, k = 8
   Result: 3 5
   Explanation: The first occurrence of 8 is at index 3 and the last occurrence is at index 5.

   Example 2:
   Input Format: n = 8, arr[] = {2, 4, 6, 8, 8, 8, 11, 13}, k = 10
   Result: -1 -1
   Explanation: The target value is not present in the array. So, we have returned -1 as the indices of the first
   and the last occurrence.

 */

void main() {
  List<int> findFirstAndLast(List<int> arr, int target) {
    int first = -1;
    int last = -1;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == target && first == -1) {
        first = i;
      } else if (arr[i] == target) {
        last = i;
      }
    }

    return [first, last];
  }

  List<int> arr1 = [2, 4, 6, 8, 8, 8, 11, 13];
  int k1 = 8; // Output:  3 5
  List<int> arr2 = [2, 4, 6, 8, 8, 8, 11, 13];
  int k2 = 10; // Output:  -1 -1

  print("Input: $arr2, k=$k2, Output: ${findFirstAndLast(arr2, k2)}");
}
