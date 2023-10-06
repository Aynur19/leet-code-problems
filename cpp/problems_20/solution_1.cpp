#include <vector>
#include <unordered_map>

#include "solutions_0_20.h"

std::vector<int> Solutions_0_20::problem_1_twoSum(const std::vector<int>& nums, int target) {
    std::vector<int> result(2, 0);
    std::unordered_map<int, int> dict;

    for (int i = 0; i < nums.size(); i++)
    {
        auto num = nums[i];
        auto iter = dict.find(target - num);

        if (iter != dict.end()) {
            result[0] = iter->second;
            result[1] = i;

            break;
        }

        dict[num] = i;
    }
    
    return result;
}