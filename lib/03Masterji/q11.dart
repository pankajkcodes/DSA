/*
    Shift Zeros to the End

    Given an integer array `arr`, rearrange the elements so that every occurrence of `0` is shifted to the
    end of the array. The relative order of all non‑zero elements must remain unchanged.

    Input: arr = [1, 2, 0, 4, 3, 0, 5, 0]
    Output: [1, 2, 4, 3, 5, 0, 0, 0]

    Explanation*: The three zeros are moved after all other numbers while the order `1, 2, 4, 3, 5` stays the same.

 */

void main() {
  shiftZerosToEnd(List<int> arr) {
    int nonZeroIndex = 0;

    for (int i = 0; i < arr.length; i++) {
      if (arr[i] != 0) {
        arr[nonZeroIndex] = arr[i];
        nonZeroIndex++;
      }
    }

    while(nonZeroIndex<arr.length){
      arr[nonZeroIndex++]= 0;
    }

    return arr;
  }

  // List<int> arr = [1, 2, 0, 4, 3, 0, 5, 0]; // Output: [1, 2, 4, 3, 5, 0, 0, 0]
  List<int> arr  = [10, 20, 30] ;//Output: [10, 20, 30]

  print("Output-> ${shiftZerosToEnd(arr)}");
}
