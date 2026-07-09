/*
  widget ---> Stream of integers
  arr = [10]
  even  ->> green
  odd ->> red
 */


void main() {

  final List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  Stream<int> numberStream = Stream.fromIterable(arr);

  numberStream.listen((v) {
    if (v % 2 == 0) {
      print("Green : $v");
    } else {
      print("Red : $v");
    }
  });
}
