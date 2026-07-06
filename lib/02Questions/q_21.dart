/*

    💬 Problem Statement (Real-Life)

      You are building a typing analyzer for a chat app.
      Given a string representing a user's message, return the length of the longest substring without
      repeating characters.

      A user is typing a message, and you want to detect:
      What is the longest stretch of characters typed without repeating any character?

      A user types a message: "abcabcbb"

      You need to find:
    👉 The longest continuous part of the message where no character repeats

      🔍 Example Walkthrough -> Message: abcabcbb
      Possible substrings without repeating characters:
        "abc" ✅
        "bca" ✅
        "cab" ✅
        "abc" ✅
        "bb" ❌ (repeat)

    👉 Longest length = 3

 */

void main() {
  /*
  💡  How to Think (Step-by-Step Mental Model)

  ❌ Brute Force Thinking (Bad but important)
     Try all substrings
     Check if each has unique characters
    ⏱ Time: O(n³) → too slow

   */

  String message = "abcabcbb";

  // Get Unique Substring
  bool getUnique(String char) {
    Set<String> seen = {};

    for (int i = 0; i < char.length; i++) {
      if (seen.contains(char[i])) {
        return false;
      }
      seen.add(char[i]);
    }

    return true;
  }

  // getLongestUniqueSubstring
  int getLongestUniqueSubstring(Set subStrings) {
    // find longest substrings
    int longestLength = 0;
    String longestElement = '';
    for (int k = 0; k < subStrings.length; k++) {
      if (longestLength < subStrings.elementAt(k).length) {
        longestLength = subStrings.elementAt(k).length;
        longestElement = subStrings.elementAt(k);
      }
    }

    print("longestLength: ${longestLength}");
    print("longestElement: ${longestElement}");

    return longestLength;
  }

  // Get All Substrings
  void getAllSubstrings() {
    Set subStrings = {};
    for (int i = 0; i < message.length; i++) {
      for (int j = i; j < message.length; j++) {
        if (message.substring(i, j) != message.substring(i, j + 1)) {
          if (getUnique(message.substring(i, j + 1))) {
            subStrings.add(message.substring(i, j + 1));
          }
        }
      }
    }

    getLongestUniqueSubstring(subStrings);
    print("subStrings : $subStrings");
    print("subStrings : ${subStrings.length}");
  }

  getAllSubstrings();
}
