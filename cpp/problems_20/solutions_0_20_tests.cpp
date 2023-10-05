
#include <gtest/gtest.h>

#include "solutions_0_20.h"

void printVector(std::vector<bool> items) {
    for (int item : items) {
        std::cout << item << " ";
    }
}


#pragma region Problem 1. Two Sum
class Problem_1_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, int, std::vector<int>>> {
protected:
    Solutions_0_20 solutions;
};

std::vector<int> problem_1_nums_1 = { 2, 7, 11, 15 };
std::vector<int> problem_1_nums_2 = { 3, 2, 4 };
std::vector<int> problem_1_nums_3 = { 3, 3 };

std::vector<int> problem_1_expected_1 = { 0, 1 };
std::vector<int> problem_1_expected_2 = { 1, 2 };
std::vector<int> problem_1_expected_3 = { 0, 1 };

std::tuple<std::vector<int>, int, std::vector<int>> testCases_problem_1[] {
    std::make_tuple(problem_1_nums_1, 9, problem_1_expected_1),
    std::make_tuple(problem_1_nums_2, 6, problem_1_expected_2),
    std::make_tuple(problem_1_nums_3, 6, problem_1_expected_3)
};

TEST_P(Problem_1_Tests, BasicTests) {
    std::vector<int> nums, expected;
    int target;

    std::tie(nums, target, expected) = GetParam();

    
    auto actual = solutions.problem_1_twoSum(nums, target);
    EXPECT_EQ(actual, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_1_Tests, ::testing::ValuesIn(testCases_problem_1));
#pragma endregion


