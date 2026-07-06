void main() {
  /*
  👉 What is the longest stretch of characters typed without repeating any character?
  👉 A user types a message: "abcabcbb"
  👉 You need to find:
  👉 The longest continuous part of the message where no character repeats

  Possible substrings without repeating characters:
  "abc" ✅
  "bca" ✅
  "cab" ✅
  "abc" ✅

  "bb" ❌ (repeat)
   👉 Longest length = 3

    String msg = "abcabcbb;

   GET ALL SUBSTRING
   GET ALL UNIQUE
   GET COUNT

   */

  String message = 'abcabcbb';

  List<String> allSubstrings = [];

  bool allUnique(String str) {
    Set<String> set = {};

    for (int i = 0; i < str.length; i++) {
      if (set.contains(str[i])) {
        return false;
      }
      set.add(str[i]);
    }

    return true;
  }

  int longestSubstringBrute(String s) {
    int maxLength = 0;

    for (int i = 0; i < s.length; i++) {
      for (int j = i; j < s.length; j++) {
        String sub = s.substring(i, j + 1);
        // String sub ="${s.substring(i)}${s.substring(j)}";

        // print("${s.substring(i)}${s.substring(j)}");

        allSubstrings.add(sub);

        if (allUnique(sub)) {
          maxLength = maxLength > sub.length ? maxLength : sub.length;
        }
      }
    }

    print('allSubstrings : $allSubstrings\n');
    print('allSubstrings : ${allSubstrings.length}\n');

    return maxLength;
  }

  // print(longestSubstringBrute(message));

  longestSubstringBrute(message);
}
