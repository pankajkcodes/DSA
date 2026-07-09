/*
     Given a list of integers, return the frequency of each number.
     Input-> [1,2,2,3,1,1,4], Output-> {1: 3, 2: 2, 3: 1, 4: 1 }
     
 */

void main() {
  List<int> list = [1, 2, 2, 3, 1, 1, 4];
  Map<int, int> freq = {};

  for (var e in list) {
    print("e->$e");
    int key = e;
    int? value = freq[e];

    if (freq.containsKey(key)) {
      freq[key] = value! + 1;
    } else {
      freq[e] = 1;
    }
  }

  print("freq-> $freq");
}
