#include <tuple>
#include <gtest/gtest.h>

#include "lc75_twoPointersProblems.h"

#pragma region Problem 283. Move Zeroes
class Problem_283_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, std::vector<int>>> { };

std::vector<int> input_283_1 = { 0, 1, 0, 3, 12 };
std::vector<int> input_283_2 = { 1, 3, 12, 0, 0 };

std::vector<int> output_283_1 = { 0 };
std::vector<int> output_283_2 = { 0 };

std::tuple<std::vector<int>, std::vector<int>> testCases_problem_283[] {
    std::make_tuple(input_283_1, output_283_1),
    std::make_tuple(input_283_2, output_283_2),
};

TEST_P(Problem_283_Tests, BasicTests) {
    std::vector<int> nums, expected;
    std::tie(nums, expected) = GetParam();

    problem_283_moveZeroes(nums);
    EXPECT_EQ(nums, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_283_Tests, ::testing::ValuesIn(testCases_problem_283));
#pragma endregion
