#include <tuple>

#include <gtest/gtest.h>

#include "solutions.h"

void printVector(std::vector<bool> items) {
    for (int item : items) {
        std::cout << item << " ";
    }
}

#pragma region Problem 1431: Kids With the Greatest Number of Candies
class Problem1431_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, int, std::vector<bool>>> { };

std::vector<int> candies1 = {2, 3, 5, 1, 3};
std::vector<int> candies2 = {4, 2, 1, 1, 2};
std::vector<int> candies3 = {2, 1, 12};

std::vector<bool> result1 = {true, true, true, false, true};
std::vector<bool> result2 = {true, false, false, false, false};
std::vector<bool> result3 = {true, false, true};

std::tuple<std::vector<int>, int, std::vector<bool>> testsCases_problem1431[] {
    std::make_tuple(candies1, 3, result1),
    std::make_tuple(candies2, 1, result2),
    std::make_tuple(candies3, 10, result3),
};

TEST_P(Problem1431_Tests, BasicTests) {
    std::vector<int> candies;
    int extraCandies;
    std::vector<bool> result;
    std::tie(candies, extraCandies, result) = GetParam();

    auto actual = problem_1431_kidsWithCandies(candies, extraCandies);
    printVector(actual);
    EXPECT_EQ(std::equal(actual.begin(), actual.end(), result.begin(), result.end()), true);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem1431_Tests, ::testing::ValuesIn(testsCases_problem1431));
#pragma endregion

#pragma region Problem 1071: Greatest Common Divisor of Strings
class Problem1071_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string, std::string>> { };

std::tuple<std::string, std::string, std::string> testCases_problem1071[] {
    std::make_tuple("ABCABC", "ABC", "ABC"),
    std::make_tuple("ABABAB", "ABAB", "AB"),
    std::make_tuple("LEET", "CODE", "")
};

TEST_P(Problem1071_Tests, BasicTests) {
    std::string str1, str2, result;
    std::tie(str1, str2, result) = GetParam();

    auto actual = problem_1071_gcdOfStrings(str1, str2);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem1071_Tests, ::testing::ValuesIn(testCases_problem1071));
#pragma endregion

#pragma region Problem 1768: Merge Strings Alternately
class Problem1768_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string, std::string>> { };

std::tuple<std::string, std::string, std::string> testCases_problem1768[] {
    std::make_tuple("abc", "pqr", "apbqcr"),
    std::make_tuple("ab", "pqrs", "apbqrs"),
    std::make_tuple("abcd", "pq", "apbqcd")
};

TEST_P(Problem1768_Tests, BasicTests) {
    std::string word1, word2, result;
    std::tie(word1, word2, result) = GetParam();

    auto actual = problem_1768_mergeAlternately(word1, word2);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem1768_Tests, ::testing::ValuesIn(testCases_problem1768));
#pragma endregion