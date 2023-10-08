
#include <gtest/gtest.h>

#include "solutions_0_20.h"
#include "../data_structures/list_node.h"

void printVector(std::vector<bool> items) {
    for (int item : items) {
        std::cout << item << " ";
    }
}

void printListNode(ListNode* ls) {
    while (ls != nullptr) {
        std::cout << ls->val << " ";
        ls = ls->next;
    }

    std::cout << std::endl;
}


#pragma region Problem 1. Two Sum
class Solution_1_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, int, std::vector<int>>> {
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

TEST_P(Solution_1_Tests, BasicTests) {
    std::vector<int> nums, expected;
    int target;

    std::tie(nums, target, expected) = GetParam();

    
    auto actual = solutions.problem_1_twoSum(nums, target);
    EXPECT_EQ(actual, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Solution_1_Tests, ::testing::ValuesIn(testCases_problem_1));
#pragma endregion

#pragma region Problem 2. Add Two Numbers
class Solution_2_Tests : public ::testing::TestWithParam<std::tuple<ListNode*, ListNode*, ListNode*>> {
protected:
    Solutions_0_20 solutions;
};

std::tuple<ListNode*, ListNode*, ListNode*> testCases_problem_2[] {
    std::make_tuple(
        new ListNode(2, new ListNode(4, new ListNode(3))), 
        new ListNode(5, new ListNode(6, new ListNode(4))), 
        new ListNode(7, new ListNode(0, new ListNode(8)))
    ),
    std::make_tuple(
        new ListNode(0), 
        new ListNode(0), 
        new ListNode(0)
    ),
    std::make_tuple(
        new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9))))))), 
        new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(9)))), 
        new ListNode(8, new ListNode(9, new ListNode(9, new ListNode(9, new ListNode(0, new ListNode(0, new ListNode(0, new ListNode(1))))))))
    )
};

TEST_P(Solution_2_Tests, BasicTests) {
    ListNode* ls1;
    ListNode* ls2;
    ListNode* expected;

    std::tie(ls1, ls2, expected) = GetParam();

    auto actual = solutions.problem_2_addTwoNumbers(ls1, ls2);

    printListNode(actual);
    EXPECT_EQ(ListNode::Equals(actual, expected), true);
};

INSTANTIATE_TEST_SUITE_P(Default, Solution_2_Tests, ::testing::ValuesIn(testCases_problem_2));
#pragma endregion
