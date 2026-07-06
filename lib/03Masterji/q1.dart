/*
    You are given an integer array `prices` where `prices[i]` is the price of the `i-th` item in a shop.
    There is a special discount on items in the shop. If you buy the `i-th` item, you will receive a discount
    equivalent to `prices[j]` where `j` is the smallest index such that `j > i` and `prices[j] <= prices[i]`.
    Otherwise, no discount is applicable.

    Return an integer array `answer` where `answer[i]` is the final discounted price you will pay for the `i-th`
    item of the shop, if applicable.

    Example 1: Input: prices = [8,4,6,2,3], Output: [4,2,4,2,3]

    Explanation:
    For item 0 with price[0]=8, you will receive a discount equivalent to prices[1]=4,
    so the final price is 8 - 4 = 4.

    For item 1 with price[1]=4, you will receive a discount equivalent to prices[3]=2,
    so the final price is 4 - 2 = 2.

    or item 2 with price[2]=6, you will receive a discount equivalent to prices[3]=2,
    so the final price is 6 - 2 = 4.

    For items 3 and 4, no discount is applicable.
    So the answer is:  Original: [8, 4, 6, 2, 3]
                       Discount: [4, 2, 2, 0, 0]
                       Final:    [4, 2, 4, 2, 3]

    Example 2: Input: prices = [1,2,3,4,5], Output: [1,2,3,4,5]
    Explanation: No discounts available for any items.

    Example 3: Input: prices = [10, 1, 1, 6], Output: [9, 0, 1, 6]

 */

void main() {
  List<int> finalPrices(List<int> prices) {
    // prices: array of integers representing prices of items
    // Return: array of integers representing final prices after discounts
    List<int> answers = [];
    List<int> discounts = [];

    for (int i = 0; i < prices.length; i++) {
      bool isDiscountApplicable = false;
      for (int j = i + 1; j < prices.length; j++) {
        // print("Steps -> $j");
        if (prices[j] <= prices[i]) {
          answers.add(prices[i] - prices[j]);
          discounts.add(prices[i] - prices[j]);
          isDiscountApplicable = true;
          break;
        }
      }

      if (!isDiscountApplicable) {
        answers.add(prices[i]);
        discounts.add(0);
      }
    }

    print("discounts: $discounts");

    return answers;
  }

  List<int> prices1 = [8, 4, 6, 2, 3]; // Output: [4,2,4,2,3]
  List<int> prices2 = [1, 2, 3, 4, 5]; //Output: [1,2,3,4,5]
  List<int> prices3 = [10, 1, 1, 6]; //Output: [9, 0, 1, 6]
  print("Input: prices = $prices1, Output: ${finalPrices(prices1)}");
}
