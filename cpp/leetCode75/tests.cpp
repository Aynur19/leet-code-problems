#include <tuple>

#include <gtest/gtest.h>

#include "solutions.h"


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