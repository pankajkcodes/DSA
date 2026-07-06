/*
SLIDING WINDOW
|
|-- WHY?
|     |
|     |-- Faster
|     |-- Avoid repeated work
|     |-- Optimize brute force
|
|-- WHERE?
|     |
|     |-- Array
|     |-- String
|     |-- Subarray
|     |-- Substring
|     |-- Continuous elements
|
|-- TYPES
|     |
|     |-- Fixed Window
|     |      |
|     |      |-- Size fixed
|     |      |-- Example:
|     |             Max sum of size K
|     |
|     |-- Variable Window
|            |
|            |-- Size changes
|            |-- Example:
|                   Longest substring
|
|-- HOW?
|     |
|     |-- Remove left
|     |-- Add right
|     |-- Move window
|
|-- CONSTRAINTS
|     |
|     |-- Continuous range required
|     |-- Sequential traversal
|     |-- Reusable previous result
|
|-- TIME COMPLEXITY
|     |
|     |-- Brute Force = O(n*k)
|     |-- Sliding Window = O(n)
|
|-- INTERVIEW KEYWORDS
      |
      |-- Longest
      |-- Smallest
      |-- Continuous
      |-- Subarray
      |-- Substring
      |-- K size

      Mental Model:

      Expand → Duplicate → Shrink → Expand
      Expand window → duplicate found → shrink window → continue expanding

      Pointer Meaning:
      Left Pointer → Start of current window
      Right Pointer → End of current window

      Core Pattern:

      expand window

      while (problem exists) {
       shrink window
      }

      update answer


*/

void main() {
  String message = "abcabcbb";

  void longestUniqueSubstring() {
    // Stores unique characters inside current window
    Set<String> chars = {};

    // Left pointer
    // Starting index of window
    int left = 0;

    // Store final longest substring
    String longest = '';

    // Right pointer moves forward means right pointer keeps moving forward one by one
    for (int right = 0; right < message.length; right++) {
      print("\nRIGHT POINTER: $right");
      print("Current Character: ${message[right]}");

      // If duplicate character found
      // shrink window from left side
      while (chars.contains(message[right])) {
        print("Duplicate Found: ${message[right]}");

        // Remove left character from set
        print("Removing: ${message[left]}");

        chars.remove(message[left]);

        // Move left pointer forward
        left++;

        print("Left moved to: $left");
      }

      // Add current character into set
      chars.add(message[right]);

      print("Current Set: $chars");

      // Current valid substring/window
      String current = message.substring(left, right + 1);

      print("Current Window: $current");

      // Update longest substring
      if (current.length > longest.length) {
        longest = current;

        print("Updated Longest: $longest");
      }
    }

    print("\nFINAL ANSWER");
    print("Longest Substring: $longest");
    print("Length: ${longest.length}");
  }

  longestUniqueSubstring();
}
