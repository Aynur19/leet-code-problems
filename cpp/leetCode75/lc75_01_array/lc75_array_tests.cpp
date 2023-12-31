#include <tuple>

#include <gtest/gtest.h>

#include "lc75_array.h"

void printVector(std::vector<bool> items) {
    for (int item : items) {
        std::cout << item << " ";
    }
}


#pragma region Problem 1768. Merge Strings Alternately
class Problem_1768_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string, std::string>> { };

std::tuple<std::string, std::string, std::string> testCases_problem_1768[] {
    std::make_tuple("abc", "pqr", "apbqcr"),
    std::make_tuple("ab", "pqrs", "apbqrs"),
    std::make_tuple("abcd", "pq", "apbqcd")
};

TEST_P(Problem_1768_Tests, BasicTests) {
    std::string word1, word2, result;
    std::tie(word1, word2, result) = GetParam();

    auto actual = problem_1768_mergeAlternately(word1, word2);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_1768_Tests, ::testing::ValuesIn(testCases_problem_1768));
#pragma endregion


#pragma region Problem 1071. Greatest Common Divisor of Strings
class Problem_1071_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string, std::string>> { };

std::tuple<std::string, std::string, std::string> testCases_problem_1071[] {
    std::make_tuple("ABCABC", "ABC", "ABC"),
    std::make_tuple("ABABAB", "ABAB", "AB"),
    std::make_tuple("LEET", "CODE", "")
};

TEST_P(Problem_1071_Tests, BasicTests) {
    std::string str1, str2, result;
    std::tie(str1, str2, result) = GetParam();

    auto actual = problem_1071_gcdOfStrings(str1, str2);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_1071_Tests, ::testing::ValuesIn(testCases_problem_1071));
#pragma endregion


#pragma region Problem 1431. Kids With the Greatest Number of Candies
class Problem_1431_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, int, std::vector<bool>>> { };

std::vector<int> candies1 = { 2, 3, 5, 1, 3 };
std::vector<int> candies2 = { 4, 2, 1, 1, 2 };
std::vector<int> candies3 = { 2, 1, 12 };

std::vector<bool> result1 = { true, true, true, false, true };
std::vector<bool> result2 = { true, false, false, false, false };
std::vector<bool> result3 = { true, false, true };

std::tuple<std::vector<int>, int, std::vector<bool>> testsCases_problem_1431[] {
    std::make_tuple(candies1, 3, result1),
    std::make_tuple(candies2, 1, result2),
    std::make_tuple(candies3, 10, result3),
};

TEST_P(Problem_1431_Tests, BasicTests) {
    std::vector<int> candies;
    int extraCandies;
    std::vector<bool> result;
    std::tie(candies, extraCandies, result) = GetParam();

    auto actual = problem_1431_kidsWithCandies(candies, extraCandies);
    EXPECT_EQ(std::equal(actual.begin(), actual.end(), result.begin(), result.end()), true);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_1431_Tests, ::testing::ValuesIn(testsCases_problem_1431));
#pragma endregion


#pragma region Problem 345. Reverse Vowels of a String
class Problem_345_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string>> { };

std::tuple<std::string, std::string> testsCases_problem_345[] {
    std::make_tuple("hello", "holle"),
    std::make_tuple("leetcode", "leotcede"),
};

TEST_P(Problem_345_Tests, BasicTests) {
    std::string s, result;
    std::tie(s, result) = GetParam();

    auto actual = problem_345_reverseVowels(s);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_345_Tests, ::testing::ValuesIn(testsCases_problem_345));
#pragma endregion


#pragma region Problem 151. Reverse Words in a String
class Problem_151_Tests : public ::testing::TestWithParam<std::tuple<std::string, std::string>> { };

std::tuple<std::string, std::string> testCases_problem_151[] {
    std::make_tuple("the sky is blue", "blue is sky the"),
    std::make_tuple("  hello world  ", "world hello"),
    std::make_tuple("a good   example", "example good a"),
};

TEST_P(Problem_151_Tests, BasicTests) {
    std::string s, expected;
    std::tie(s, expected) = GetParam();

    auto actual = problem_151_reverseWords(s);
    EXPECT_EQ(actual, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_151_Tests, ::testing::ValuesIn(testCases_problem_151));
#pragma endregion


#pragma region Problem 605. Can Place Flowers
class Problem_605_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, int, bool>> { };

std::vector<int> flowerbed_1 = {1, 0, 0, 0, 1};
std::vector<int> flowerbed_2 = {1, 0, 0, 0, 1};
std::vector<int> flowerbed_109 = {1, 0, 0, 0, 0, 1};
std::vector<int> flowerbed_123 = {0, 1, 0};
std::vector<int> flowerbed_112 = {0, 0, 1, 0, 1};

std::tuple<std::vector<int>, int, bool> testsCases_problem_605[] {
    std::make_tuple(flowerbed_1, 1, true),
    std::make_tuple(flowerbed_2, 2, false),
    std::make_tuple(flowerbed_109, 2, false),
    std::make_tuple(flowerbed_123, 1, false),
    std::make_tuple(flowerbed_112, 1, true),
};

TEST_P(Problem_605_Tests, BasicTests) {
    std::vector<int> flowerbed;
    int n;
    bool result;
    std::tie(flowerbed, n, result) = GetParam();

    auto actual = problem_605_canPlaceFlowers(flowerbed, n);
    EXPECT_EQ(actual, result);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_605_Tests, ::testing::ValuesIn(testsCases_problem_605));
#pragma endregion


#pragma region Problem 238. Product of Array Except Self
class Problem_238_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, std::vector<int>>> { };

std::vector<int> input_238_1 = { 1, 2, 3, 4 };
std::vector<int> input_238_2 = { -1, 1, 0, -3, 3 };

std::vector<int> output_238_1 = { 24, 12, 8, 6 };
std::vector<int> output_238_2 = { 0, 0, 9, 0, 0 };

std::tuple<std::vector<int>, std::vector<int>> testCases_problem_238[] {
    std::make_tuple(input_238_1, output_238_1),
    std::make_tuple(input_238_2, output_238_2),
};

TEST_P(Problem_238_Tests, BasicTests) {
    std::vector<int> nums, expected;
    std::tie(nums, expected) = GetParam();

    auto actual = problem_238_productExceptSelf(nums);
    // EXPECT_EQ(std::equal(actual.begin(), actual.end(), expected.begin(), expected.end()), true);
    EXPECT_EQ(actual, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_238_Tests, ::testing::ValuesIn(testCases_problem_238));
#pragma endregion


#pragma region Problem 334. Increasing Triplet Subsequence
class Problem_334_Tests : public ::testing::TestWithParam<std::tuple<std::vector<int>, bool>> { };

std::vector<int> input_334_1 = { 1, 2, 3, 4, 5 };
std::vector<int> input_334_2 = { 5, 4, 3, 2, 1 };
std::vector<int> input_334_3 = { 2, 1, 5, 0, 4, 6 };

std::tuple<std::vector<int>, bool> testCases_problem_334[] {
    std::make_tuple(input_334_1, true),
    std::make_tuple(input_334_2, false),
    std::make_tuple(input_334_3, true),
};

TEST_P(Problem_334_Tests, BasicTests) {
    std::vector<int> nums;
    bool expected;
    std::tie(nums, expected) = GetParam();

    auto actual = problem_334_increasingTriplet(nums);
    EXPECT_EQ(actual, expected);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_334_Tests, ::testing::ValuesIn(testCases_problem_334));
#pragma endregion


#pragma region Problem 443. String Compression
class Problem_443_Tests : public ::testing::TestWithParam<std::tuple<std::vector<char>, int, std::vector<char>>> { };

std::vector<char> input_443_1 = { 'a', 'a', 'b', 'b', 'c', 'c', 'c' };
std::vector<char> input_443_2 = { 'a' };
std::vector<char> input_443_3 = { 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b' };

std::vector<char> output_443_1 = { 'a', '2', 'b', '2', 'c', '3' };
std::vector<char> output_443_2 = { 'a' };
std::vector<char> output_443_3 = { 'a', 'b', '1', '2' };

std::tuple<std::vector<char>, int, std::vector<char>> testCases_problem_443[] {
    std::make_tuple(input_443_1, 6, output_443_1),
    std::make_tuple(input_443_2, 1, output_443_2),
    std::make_tuple(input_443_3, 4, output_443_3),
};

TEST_P(Problem_443_Tests, BasicTests) {
    std::vector<char> chars, expectedChars;
    int expected;
    std::tie(chars, expected, expectedChars) = GetParam();

    auto actual = problem_443_compress(chars);
    EXPECT_EQ(actual, expected);
    EXPECT_EQ(chars, expectedChars);
};

INSTANTIATE_TEST_SUITE_P(Default, Problem_443_Tests, ::testing::ValuesIn(testCases_problem_443));
#pragma endregion