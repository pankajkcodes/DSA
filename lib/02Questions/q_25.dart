/*
   Find Non-repeating characters of a String

   Problem Statement: Given a string, print non-repeating characters of the string.

   Example 1: Input: string = "google".  Output:l,e
   Explanation:Non-repeating characters are l, e.

   Example 2: Input:string = "yahoo".  Output:y,a,h
   Explanation: Non-repeating characters are y, a, h.


 */

void main() {
  String nonRepeating(String str) {
    String ans = '';

    for (int i = 0; i < str.length; i++) {
      String tem1 = str.substring(i, i + 1);

      int occur = 0;

      for (int j = 0; j < str.length; j++) {
        String tem2 = str.substring(j, j + 1);
        if (tem1 == tem2) {
          occur++;
        }
        print("Step1: $tem1, Step2: $tem2, Occur: $occur");
      }
      if (occur == 1) {
        ans += tem1;
      }
    }
    return ans;
  }


  String nonRepeatingOpt(String str) {
    Map<String, int> freq = {};

    // Count frequency
    for (int i = 0; i < str.length; i++) {
      String ch = str[i];
      print("Ch: $ch");

      freq[ch] = (freq[ch] ?? 0) + 1;
    }

    String ans = '';

    // Find non-repeating characters
    for (int i = 0; i < str.length; i++) {
      if (freq[str[i]] == 1) {
        ans += str[i];
      }
    }

    return ans;
  }


  String str1 = "google"; // Output:l,e
  String str2 = "yahoo"; // Output:y,a,h

  print("Input ${str1}. Output : ${nonRepeatingOpt(str1)}");
}
