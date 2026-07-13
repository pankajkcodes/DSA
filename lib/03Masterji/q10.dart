/*
     Flip the Array

     Reverse the given array arr[]. Reversing an array means rearranging its elements so that the first element
     becomes the last, the second element becomes the second‑last, and so on.

     Example 1:

     Input: arr[] = [1, 4, 3, 2, 6, 5]
     Output: [5, 6, 2, 3, 4, 1]
     Explanation: The element `1` moves to the last position, `4` moves to the second‑last, etc.
     Example 2:

     Input: arr[] = [4, 5, 1, 2]
     Output: [2, 1, 5, 4]
     Explanation: The element `4` moves to the last position, `5` moves to the second‑last, etc.

 */

void main() {
  flipArray(List<int> arr) {
    List<int> ans = [];
    print("${arr.length}");
    for (int i = arr.length - 1; i >= 0; i--) {
      print("${arr[i]}");
      ans.add(arr[i]);
    }
    return ans;
  }

  List<int> arr = [1, 4, 3, 2, 6, 5];
  //Output: [5, 6, 2, 3, 4, 1]

  print("Output: ${flipArray(arr)}");
}
