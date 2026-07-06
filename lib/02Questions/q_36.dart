/*
   Find Peak Element: https://takeuforward.org/data-structure/peak-element-in-array

   Problem Statement:
   Given an array of length N, peak element is defined as the element greater than both of its neighbors.
   Formally, if arr[i] is the peak element, arr[i - 1] < arr[i] and arr[i + 1] < arr[i].
   Find the index(0-based) of a peak element in the array. If there are multiple peak numbers,
   return the index of any peak number.

   Input: arr[] = {1,2,3,4,5,6,7,8,5,1}. Output: 7
   Explanation: There is only 1 peak element, 8,  that is at index 7.

   Input: arr[] = {1,2,1,3,5,6,4}. Output: 1
   Explanation : There are 2 peak numbers that are at indices 1 and 5. We can return any of them.

   Brute Force Approach:

   The brute force approach to find peak element is to traverse the entire array and compare the current element with
   both of its neighbours. If it is greater than both of its neighbours we can simply return it as our peak element.

   For the elements at first and last index, since both the neighbours are not available, we can just check their only
   neighbour element and return if its a peak element or not.

   Complexity Analysis.

   Time Complexity: O(N), we traverse the entire array once to find peak element.
   Space Complexity: O(1), constant additional space is used.

 */

void main() {



  int findPeakElement(List<int> arr) {
    int pick = -1;

    for (int i = 1; i < arr.length; i++) {
      if (arr[i] > arr[i - 1] && arr[i] > arr[i + 1]) {
        pick = i;
        return pick;
      }
    }

    return pick;
  }

  List<int> arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 5, 1]; // Output: 7

  List<int> arr2 = [1, 2, 1, 3, 5, 6, 4]; // Output: 1

  print("Input: $arr2, Output: ${findPeakElement(arr2)}");

}
