/*

 Given a string s, find the first non-repeating character in it and return its index. If
 it does not exist, return -1.

 Example 1: Input: s = "leetcode", Output: 0
 Explanation: The character 'l' at index 0 is the first character that does not occur at any other index.

 Example 2: Input: s = "loveleetcode", Output: 2

 Example 3: Input: s = "aabb", Output: -1


 */

void main() {

  // Brut force approach
  int getFirstNonRepeatingCharIndex(String s) {
    for (int i = 0; i < s.length; i++) {
      int count = 0;

      for (int j = 0; j < s.length; j++) {
        print("First Loop: ${s[i]}, Second Loop: ${s[j]}");

        if (s[i] == s[j]) {
          count++;
        }
      }
      if (count == 1) {
        return i;
      }
    }

    return -1;
  }

  String s = "leetcode";
  String s1 = "loveleetcode";
  String s2 = "aabb";

  print("Output Index is : ${getFirstNonRepeatingCharIndex(s2)}");


}
