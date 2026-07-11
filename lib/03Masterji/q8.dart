/*
   Find Most Frequent Letter

   Find the letter with the maximum frequency from a list of strings. Each string is composed of lowercase alphabets,
   and your task is to determine the letter that appears the most frequently across all the strings combined.
   n case of a tie, the lexicographically smaller letter should be selected.

   Input: ["axa", "abc", "cba"], Output: "a"

 */

void main() {
  mostFrequentLetter(words) {
    // words: array of strings, each string contains only lowercase alphabets
    // Return the most frequent letter as a string

    Map<String, int> freq = {};

    for (var word in words) {
      // print("Word-> $word");
      for (int i = 0; i < word.length; i++) {
        // print("Char-> ${word[i]}");
        if (freq.containsKey(word[i])) {
          freq[word[i]] = freq[word[i]]! + 1;
        } else {
          freq[word[i]] = 1;
        }
      }
    }

    print("freq-> $freq");

    String ans = "";
    int count = 0;

    freq.forEach((key, value) {
      if (count < value) {
        count = value;
        ans = key;
      }
    });

    return ans;
  }

  List<String> arr1 = ["axa", "abc", "cba"]; // Output: "a"
  List<String> arr2 = ["zzzz","yyyyy","xxxxxx","a"]; // Output: "x"
  print("Output: ${mostFrequentLetter(arr2)}");

}
