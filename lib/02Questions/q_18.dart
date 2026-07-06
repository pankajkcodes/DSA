/*
   Move all Zeros to the end of the array : https://takeuforward.org/data-structure/move-all-zeros-to-the-end-of-the-array

   Problem Statement: You are given an array of integers, your task is to move all the zeros in the array
   to the end of the array and move non-negative integers to the front by maintaining their order.

   Input: 1 ,0 ,2 ,3 ,0 ,4 ,0 ,1. Output: 1 ,2 ,3 ,4 ,1 ,0 ,0 ,0
   Explanation: All the zeros are moved to the end and non-negative integers are moved to front by maintaining order

   Input : 1,2,0,1,0,4,0. Output: 1,2,1,4,0,0,0
   Explanation : All the zeros are moved to the end and non-negative integers are moved to front by maintaining order

   Brute Force Approach:
   The extremely naive solution, we can think of, involves the use of an extra array. The algorithm is as follows.

   Suppose, there are N-X zeros and X non-zero elements in the array. We will first copy those X non-zero elements
   from the original array to a temporary array.

   Then, we will copy the elements from the temporary array one by one and fill the first X places of the original array.
   The last N-X places of the original array will be then filled with zero. Now, our task is completed.

 */

void main() {
  List<int> moveZeroes(List<int> nums) {
    List<int> sortedArr = [];
    List<int> temArr = [];

    nums.forEach((e) {
      // print("Element : $e");
      if (e == 0) {
        temArr.add(0);
      } else {
        sortedArr.add(e);
      }
    });

    // print("Tem Arr : $temArr, New arr : $sortedArr");

    sortedArr.addAll(temArr);

    return sortedArr;
  }

  List<int> arr1 = [1, 0, 2, 3, 0, 4, 0, 1]; // Output -> 1,2,3,4,1,0,0,0
  List<int> arr2 = [1, 2, 0, 1, 0, 4, 0]; // Output -> 1,2,1,4,0,0,0

  print("Input: ${arr1}, Output: ${moveZeroes(arr1)}");
}
