/*
LIST (Dynamic Array)
│
├── Definition
│     → Ordered Collection of Items
│     → Stored using Index Positions
│
├── Core Features
│     │
│     ├── Ordered
│     │     → Maintains insertion order
│     │
│     ├── Indexed
│     │     → Access using position
│     │     → list[0], list[1]
│     │
│     ├── Duplicate Allowed
│     │     → [1,1,2,2]
│     │
│     ├── Dynamic Size
│     │     → Can grow/shrink
│     │
│     └── Mutable
│           → Can update values
│
├── Structure
│     │
│     ├── Example
│     │     → [10, 20, 30]
│     │
│     ├── Index Mapping
│     │     → 0 → 10
│     │     → 1 → 20
│     │     → 2 → 30
│     │
│     └── Memory
│           → Sequential Memory Storage
│
├── Operations
│     │
│     ├── Add
│     │     → add(40)
│     │
│     ├── Remove
│     │     → remove(20)
│     │
│     ├── Update
│     │     → list[1] = 50
│     │
│     ├── Access
│     │     → list[0]
│     │
│     ├── Search
│     │     → contains(30)
│     │
│     └── Sort
│           → ascending / descending
│
├── Time Complexity
│     │
│     ├── Access by Index
│     │     → O(1)
│     │
│     ├── Add at End
│     │     → O(1)
│     │
│     ├── Insert Middle
│     │     → O(n)
│     │
│     ├── Delete Middle
│     │     → O(n)
│     │
│     └── Search
│           → O(n)
│
├── Internal Working
│     │
│     ├── Uses Array Internally
│     │
│     ├── When Full
│     │     → Creates Bigger Array
│     │     → Copies Old Data
│     │
│     └── Shift Operation
│           → Insert/Delete causes shifting
│
├── Advantages
│     │
│     ├── Fast Index Access
│     ├── Easy Iteration
│     ├── Simple Structure
│     └── Good for Ordered Data
│
├── Disadvantages
│     │
│     ├── Slow Middle Insert/Delete
│     ├── Search is Linear
│     └── Resize Cost Sometimes High
│
├── Real App Usage
│     │
│     ├── Instagram Feed
│     ├── Chat Messages
│     ├── Product Lists
│     ├── API Response Data
│     ├── Flutter ListView
│     └── Recent Searches
│
├── Flutter Example
│     │
│     ├── List<String> users = []
│     │
│     ├── users.add("Pankaj")
│     ├── users.remove("Pankaj")
│     └── users[0]
│
├── Comparison
│     │
│     ├── List vs Set
│     │     → List keeps duplicates
│     │     → Set keeps unique values
│     │
│     ├── List vs Map
│     │     → List uses Index
│     │     → Map uses Key → Value
│     │
│     └── List vs Queue
│           → Queue follows FIFO
│
└── Mental Model
      │
      ├── Like Train Compartments
      │     → Every item has fixed position
      │
      ├── Like Instagram Feed
      │     → Ordered scrolling items
      │
      └── Think:
            "Ordered + Indexed + Dynamic"
 */