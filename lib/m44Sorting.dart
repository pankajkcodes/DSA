/*
     SORTING
│
├── 🎯 Goal
│   ├── Arrange data (ascending / descending)
│   └── Enable fast searching (Binary Search)
│
├── ⚙️ Core Idea
│   └── Compare + Place element in correct position
│
├── 🟢 Basic Sorts (Build Intuition)
│   │
│   ├── Bubble Sort
│   │   └── Swap adjacent elements repeatedly
│   │
│   ├── Selection Sort
│   │   └── Find minimum → place at correct index
│   │
│   └── Insertion Sort ⭐
│       └── Insert element into sorted part
│
├── 🔵 Efficient Sorts (Most Important)
│   │
│   ├── Merge Sort ⭐⭐
│   │   ├── Divide array
│   │   ├── Sort recursively
│   │   └── Merge sorted parts
│   │
│   └── Quick Sort ⭐⭐⭐
│       ├── Pick pivot
│       ├── Partition array
│       └── Recursively sort
│
├── 🟡 Special Sorts
│   │
│   ├── Counting Sort
│   │   └── Works on frequency (no comparison)
│   │
│   └── Heap Sort
│       └── Uses Heap (priority structure)
│
├── ⚡ Key Concepts
│   │
│   ├── Time Complexity
│   │   ├── O(n²) → slow (Bubble, Selection)
│   │   └── O(n log n) → fast (Merge, Quick)
│   │
│   ├── Space Complexity
│   │   ├── In-place → Quick Sort
│   │   └── Extra space → Merge Sort
│   │
│   ├── Stability
│   │   ├── Stable → Merge, Insertion
│   │   └── Unstable → Quick, Heap
│   │
│   └── Adaptiveness
│       └── Works faster if data is nearly sorted
│
├── 🏭 Real-World Usage
│   │
│   ├── Built-in Sorts
│   │   └── Tim Sort (Merge + Insertion)
│   │
│   ├── Databases
│   │   └── Merge Sort (large data)
│   │
│   └── Apps / Backend
│       └── Quick Sort (fast average)
│
└── 🚀 Decision Making
    │
    ├── Small data → Insertion Sort
    ├── Large data → Quick / Merge
    ├── Need stability → Merge Sort
    └── Memory constraint → Quick Sort

    🧠 Real Industry Truth (Important): Most real apps don’t implement sorting manually.
       They use built-in functions:
       Dart → list.sort()
       JS → array.sort()
       Java → Collections.sort()

    👉 Internally, these use:
       Quick Sort
       Merge Sort
       Tim Sort (hybrid of Merge + Insertion)

 */

void main() {
  print("Sorting start here...");
}
