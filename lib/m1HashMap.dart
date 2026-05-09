import 'dart:collection';

/*
HASHMAP
│
├── WHAT IS IT?
│   │
│   ├── Stores Data as:
│   │      KEY → VALUE
│   │
│   ├── Example:
│   │      "name" → "Pankaj"
│   │      "age"  → 25
│   │
│   └── Like a Dictionary
│
│
├── WHY USE HASHMAP?
│   │
│   ├── Fast Insert
│   ├── Fast Search
│   ├── Fast Delete
│   │
│   └── Time Complexity
│          O(1) Average
│
│
├── INTERNAL WORKING
│   │
│   ├── Uses Hashing
│   │
│   ├── KEY
│   │     ↓
│   ├── Hash Function
│   │     ↓
│   └── Storage Location
│
│
├── DART IMPLEMENTATION
│   │
│   ├── Map
│   │     → Used Mostly
│   │     → Simple
│   │     → Flutter Standard
│   │
│   └── HashMap
│         → Explicit HashMap
│         → More Control
│         → DSA / Advanced Use
│
│
├── CREATE HASHMAP
│   │
│   ├── Normal Map
│   │
│   │     Map<String, int> marks = {};
│   │
│   └── Explicit HashMap
│
│         import 'dart:collection';
│
│         HashMap<String, int> marks =
│         HashMap();
│
│
├── COMMON OPERATIONS
│   │
│   ├── Insert
│   │     map["Math"] = 90;
│   │
│   ├── Access
│   │     map["Math"]
│   │
│   ├── Update
│   │     map["Math"] = 95;
│   │
│   ├── Delete
│   │     map.remove("Math");
│   │
│   ├── Clear
│   │     map.clear();
│   │
│   ├── Check Key
│   │     containsKey()
│   │
│   ├── Check Value
│   │     containsValue()
│   │
│   └── Loop
│         forEach()
│         entries
│
│
├── REAL APP USAGE
│   │
│   ├── JSON Parsing
│   ├── API Response
│   ├── User Data
│   ├── Cache
│   ├── Firebase Data
│   ├── Product Lookup
│   └── Frequency Counting
│
│
├── DSA PROBLEMS USING HASHMAP
│   │
│   ├── Two Sum
│   ├── Subarray Sum = K
│   ├── Longest Substring
│   ├── Duplicate Detection
│   └── Frequency Counter
│
│
└── MEMORY TRICK
    │
    ├── HashMap =
    │      Fast Dictionary
    │
    └── KEY → VALUE
 */

void main() {
  // Initialization
  final HashMap<String, int> scores = HashMap();

  // Adding values
  scores['Alice'] = 10;
  scores['Bob'] = 15;
  scores['Bob1'] = 5;

  print("Scores : ${scores}");
  print("Scores : ${scores['Bob1']}");

  scores.forEach((key, value) {
    print('$key: $value');
  });

  for (var entry in scores.entries) {
    print('${entry.key}: ${entry.value}');
  }

  for (var key in scores.keys) {
    print('$key: ${scores[key]}');
  }

  scores['Bob'] = 20; // add or overwrite

  scores.putIfAbsent('Charlie', () => 30);

  scores.remove('Alice');
}
