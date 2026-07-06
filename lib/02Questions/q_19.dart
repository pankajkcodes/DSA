/*
   Container With Most Water https://takeuforward.org/

   Problem Statement:
   Given an integer array height of length n. There are n vertical lines drawn such that the two endpoints
   of the ith line are (i, 0) and (i, height[i]). Find two lines that together with the x-axis form a container,
   such that the container contains the most water. Return the maximum amount of water a container can store.
   Notice that you may not slant the container.

   Input: nums = [1,4,2,3], Output: 6
   Explanation:
   At i = 1 and i=3 heights are 4 and 3, therefore the maximum amount of water can be stored there.
   To calculate any amount of water between 2 vertical lines it is the horizontal distance between them
   multiplied by the minimum of those 2 lines. So in the best case, the max distance between i=1 and i=3 is 2,
   and the minimum of 4 and 3 is 3, so total water is 2*3=6.

   Example 2: Input: nums = [1,8,6,2,5,4,8,3,7], Output: 49

   Here maximum water can be contained between i=1 and i=8

   Brute Force Approach:

   Intuition: The problem is to find the maximum water that can be contained between two lines.
   Since we're unsure which pair of lines will give the best result, we try all combinations.
   This brute-force method checks every pair to ensure we don't miss the optimal one.

   Initialize a variable to store the maximum area, starting with the smallest possible value.
   Use a nested loop to consider every possible pair of lines.
   For each pair, calculate the area using the shorter line as height and the distance between the lines as width.
   Update the maximum area if the current area is greater.
   Return the maximum area found after checking all pairs.

 */

void main() {
  int maxArea(List<int> nums) {
    int area = -1;

    print("Nums : $nums");
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        int temArea = nums[i] < nums[j] ? nums[i] : nums[j] * (j - i);
        print(
          "Pairs: First-> ${nums[i] < nums[j] ? nums[i] : nums[j]}, Second->${j - i}, Distance-> ${j - i}, Area-> $area",
        );

        if (temArea > area) {
          area = temArea;
        }
      }
    }

    return area;
  }

  List<int> heights1 = [1, 4, 2, 3];
  List<int> heights2 = [1, 8, 6, 2, 5, 4, 8, 3, 7];

  print("Output: maxArea: ${maxArea(heights2)}");
}
