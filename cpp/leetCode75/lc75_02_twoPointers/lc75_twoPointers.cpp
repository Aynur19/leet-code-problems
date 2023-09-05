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

bool problem_392_isSubsequence(std::string s, std::string t) {
    int sSize = s.size();
    int tSize = t.size();
    if (sSize > tSize) { return false; }

    int sIdx = 0;
    int tIdx = 0;

    while (sIdx < sSize) {
        if (tIdx >= tSize) { return false; }

        if (s[sIdx] == t[tIdx]) {
            sIdx++;
            tIdx++;
        } else {
            tIdx++;
        }
    }

    return true;
}


