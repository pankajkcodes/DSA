void main() {
  // 👉 A user has added multiple items to their cart, each with a price.
  // 👉 The user has a gift card of ₹1000.
  // 👉 You need to find two items whose total price is exactly ₹1000.

  // Input:
  List<int> prices = [200, 450, 700, 300, 550];
  int target = 1000;

  // Output:
  // [450, 550]  OR indices [1, 4]

  // Brute-force approach: Check all pairs of items to find the correct combination.

  for (var i = 0; i < prices.length; i++) {
    // print("1.First loop : ${prices[i]}");
    for (var j = i + 1; j < prices.length; j++) {
      // print("2.Second loop : ${prices[j]}");

      print(
        "Iterations Index $i, $j: ( ${prices[i]}, ${prices[j]} ) => ${prices[i] + prices[j]}",
      );

      if (prices[i] + prices[j] == target) {
        print("Wow Found : ${prices[i]}, ${prices[j]}");
        // return;
      } else {
        // print("Not Found : ${prices[i]}, ${prices[j]}\n");
      }
    }
  }

  // OPTIMISED USING HASHMAP

  List<int> twoSum(List<int> prices, int target) {
    Map<int, int> seen = {};

    for (int i = 0; i < prices.length; i++) {
      int needed = target - prices[i];
      if (seen.containsKey(needed)) {
        return [seen[needed]!, i];
      }

      seen[prices[i]] = i;
    }

    return [];
  }

  print("Optimised Way : ${twoSum(prices, target)}");
}
