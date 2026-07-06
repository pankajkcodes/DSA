/*
     Binary Search
│
├── 📌 Condition (ALWAYS CHECK)
│   └── Sorted / Monotonic data
│
├── 🎯 What are you finding?
│   │
│   ├── 1. Exact Value
│   │   └── arr[mid] == target → return
│   │
│   ├── 2. Lower Bound (🔥 MOST IMPORTANT)
│   │   └── First element ≥ target
│   │
│   └── 3. Answer Space (🔥 ADVANCED)
│       └── Min / Max possible answer
│
├── ⚙️ Core Logic (Same Everywhere)
│   ├── mid = left + (right - left) / 2
│   │
│   ├── if condition satisfied
│   │      → store answer
│   │      → move LEFT (right = mid - 1)
│   │
│   └── else
│          → move RIGHT (left = mid + 1)
│
├── 🔁 Movement Rule
│   ├── Too small → go RIGHT
│   └── Too big → go LEFT
│
├── ⏱ Complexity
│   └── O(log n)
│
└── 🧠 Golden Thought
    └── "Can I remove half of the data?"

   🔥 Ultra-Short Memory Trick
    Sorted + Half Remove + Condition = Binary Search

    Move RIGHT Means: Ignore LEFT side, Search only RIGHT side
    Code: left = mid + 1;

    Move LEFT Means: Ignore RIGHT side, Search only LEFT side
    Code: right = mid - 1;

*/

void main() {
  int binarySearch(List<int> arr, int target) {
    int left = 0;
    int right = arr.length - 1;
    int answer = -1;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      print("Mid : $mid, value : ${arr[mid]}, Target : $target");

      // if mid is less than target then move right because answer will be in right
      // if mid is greater than target then move left because answer will be in left

      if (arr[mid] >= target) {
        answer = mid; // store answer
        right = mid - 1; // move LEFT (try better)
      } else {
        left = mid + 1; // move RIGHT
      }
    }

    return answer;
  }

  List<int> arr = [10, 20, 30, 40, 50];
  int target = 35;

  print(
    "Input=> arr: $arr, target:$target. Output: ${binarySearch(arr, target)}",
  );
}
