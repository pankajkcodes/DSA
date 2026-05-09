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
*/

void main() {}
