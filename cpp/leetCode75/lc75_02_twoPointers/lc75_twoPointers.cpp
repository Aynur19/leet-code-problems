#include "lc75_twoPointers.h"

void problem_283_moveZeroes(std::vector<int>& nums) {
    int n = nums.size();
    if (n < 2) { return; }

    int left = 0;
    int right = 1;

    while (right < n) {
        if (nums[left] == 0 && nums[right] != 0) {
            auto tmp = nums[left];
            nums[left] = nums[right];
            nums[right] = tmp;
        }

        if (nums[left] != 0) {
            left++;
        }

        right++;
    }
}