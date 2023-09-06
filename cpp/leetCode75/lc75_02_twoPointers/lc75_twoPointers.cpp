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

int problem_11_maxArea(std::vector<int>& height) {
    int volume = 0;
    int n = height.size();
    int left = 0;
    int right = n - 1;

    while (left < right) {
        volume = std::max(volume, std::min(height[left], height[right]) * (right - left));

        if (height[left] > height[right]) {
            right--;
        }
        else {
            left++;
        }
    }

    return volume;
}

int problem_1679_maxOperations(std::vector<int>& nums, int k) {
    int n = nums.size();
    if (n < 2) { return 0; }

    std::sort(nums.begin(), nums.end());
    int left = 0;
    int right = n - 1;
    int count = 0;

    while (left < right)
    {
        auto sum = nums[left] + nums[right];
        if (sum == k) {
            count++;
            left++;
            right--;
        } 
        else {
            if (sum > k) {
                right--;
            }
            else {
                left++;
            }
        }
    }
    
    return count;
}
