/*
   Find Duplicate Missing

 */


void main(){
  findDuplicateMissing(List<int> arr) {
    Set<int> occur = {};
    List<int> ans = [];

    for (int i = 1; i < arr.length-1 ; i++) {
      print("$i");
      if (!occur.contains(arr[i])) {
        occur.add(arr[i]);
      } else {
        ans.add(arr[i]);
        ans.add(i);
      }
    }
  }

 List<int> arr = [1, 2, 2, 4];


  print("Output: ${findDuplicateMissing(arr)}");
}