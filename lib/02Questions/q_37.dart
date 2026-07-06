/*
    Given an array of integers temperatures represents the daily temperatures, return an array answer
    such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature.
    If there is no future day for which this is possible, keep answer[i] == 0 instead.

    Problem Description:
    You are given an array temperatures where each element represents the daily temperature. For each day,
    you need to find how many days you would have to wait to get a warmer temperature.
    Specifically, for each position i in the array, you need to find the smallest number of days you'd have to
    wait after day i to get a temperature that is strictly warmer than temperatures[i].
    If there's no future day with a warmer temperature, the answer for that position should be 0.

    For example, if temperatures = [73, 74, 75, 71, 69, 72, 76, 73]:
    For day 0 (temperature 73), the next warmer day is day 1 (temperature 74), so you wait 1 day
    For day 1 (temperature 74), the next warmer day is day 2 (temperature 75), so you wait 1 day
    For day 2 (temperature 75), the next warmer day is day 6 (temperature 76), so you wait 4 days
    For day 3 (temperature 71), the next warmer day is day 5 (temperature 72), so you wait 2 days And so on...
    The result would be [1, 1, 4, 2, 1, 1, 0, 0].

    The task is to return an array where each element represents the number of days to wait for a
    warmer temperature, or 0 if no warmer day exists in the future.

    Example 1: Input: temperatures = [73,74,75,71,69,72,76,73]. Output: [1,1,4,2,1,1,0,0]

    Example 2: Input: temperatures = [30,40,50,60]. Output: [1,1,1,0]

    Example 3: Input: temperatures = [30,60,90]. Output: [1,1,0]

 */

void main() {
  List<int> nextWarmerDay(List<int> arr) {
    List<int> ans = [];
    bool found = false;

    for (int i = 0; i < arr.length; i++) {
      int currentTemp = arr[i];
      int day = 0;

      for (int j = i + 1; j < arr.length; j++) {
        day++;
        int nextTemp = arr[j];
        print("currentTemp : $currentTemp, nextTemp :$nextTemp");
        if (nextTemp > currentTemp) {
          found = true;
          break;
        } else {
          found = false;
        }
      }

      ans.add(found ? day : 0);
    }

    return ans;
  }

  List<int> temperatures1 = [73, 74, 75, 71, 69, 72, 76, 73];
  //Output: [1,1,4,2,1,1,0,0]
  List<int> temperatures2 = [30, 40, 50, 60]; //Output: [1,1,1,0]
  List<int> temperatures3 = [30, 60, 90]; //Output: [1,1,0]

  print("Input=> $temperatures3, Output=> ${nextWarmerDay(temperatures3)}");
}
