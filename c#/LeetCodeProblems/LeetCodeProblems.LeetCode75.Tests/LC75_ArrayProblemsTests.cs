namespace LeetCodeProblems.LeetCode75.Tests;

public class LC75_ArrayProblemsTests
{
    #region Problem 238. Product of Array Except Self
    [Theory]
    [InlineData(new int[] { 1, 2, 3, 4 }, new int[] { 24, 12, 8, 6 })]
    [InlineData(new int[] { -1, 1, 0, -3, 3 }, new int[] { 0, 0, 9, 0, 0 })]
    public static void Problem_238_ProductExceptSelf_Tests(int[] nums, int[] result)
    {
        var actual = LC75_ArrayProblems.Problem_238_ProductExceptSelf(nums);

        Assert.True(result.SequenceEqual(actual));
    }
    #endregion

    #region Problem 151. Reverse Words in a String
    [Theory]
    [InlineData("the sky is blue", "blue is sky the")]
    [InlineData("  hello world  ", "world hello")]
    [InlineData("a good   example", "example good a")]
    public static void Problem_151_ReverseWords_Tests(string s, string result)
    {
        var actual = LC75_ArrayProblems.Problem_151_ReverseWords(s);

        Assert.Equal(result, actual);
    }
    #endregion

    #region Problem 345. Reverse Vowels of a String
    [Theory]
    [InlineData("hello", "holle")]
    [InlineData("leetcode", "leotcede")]
    public static void Problem_345_ReverseVowels_Tests(string s, string result)
    {
        var actual = LC75_ArrayProblems.Problem_345_ReverseVowels(s);

        Assert.Equal(result, actual);
    }
    #endregion

    #region Problem 605. Can Place Flowers
    [Theory]
    [InlineData(new int[] { 1, 0, 0, 0, 1 }, 1, true)]
    [InlineData(new int[] { 1, 0, 0, 0, 1 }, 2, false)]
    public static void Problem_605_CanPlaceFlowers_Tests(int[] flowerbed, int n, bool result)
    {
        var actual = LC75_ArrayProblems.Problem_605_CanPlaceFlowers(flowerbed, n);

        Assert.Equal(result, actual);
    }
    #endregion

    #region Problem 1431. Kids With the Greatest Number of Candies
    [Theory]
    [InlineData(new int[] { 2, 3, 5, 1, 3 }, 3, new bool[] { true, true, true, false, true })]
    [InlineData(new int[] { 4, 2, 1, 1, 2 }, 1, new bool[] { true, false, false, false, false })]
    [InlineData(new int[] { 12, 1, 12 }, 10, new bool[] { true, false, true })]
    public static void Problem_1431_KidsWithCandies_Tests(int[] candies, int extraCandies, bool[] result)
    {
        bool[] actual = LC75_ArrayProblems.Problem_1431_KidsWithCandies(candies, extraCandies).ToArray();

        Assert.True(result.SequenceEqual(actual));
    }
    #endregion

    #region Problem 1071. Greatest Common Divisor of Strings
    [Theory]
    [InlineData("ABCABC", "ABC", "ABC")]
    [InlineData("ABABAB", "ABAB", "AB")]
    [InlineData("LEET", "CODE", "")]
    public static void Problem_1071_GcdOfStrings_Tests(string str1, string str2, string result)
    {
        var actual = LC75_ArrayProblems.Problem_1071_GcdOfStrings(str1, str2);

        Assert.Equal(result, actual);
    }
    #endregion

    #region Problem 1768. Merge Strings Alternately
    [Theory]
    [InlineData("abc", "pqr", "apbqcr")]
    [InlineData("ab", "pqrs", "apbqrs")]
    [InlineData("abcd", "pq", "apbqcd")]
    public static void Problem_1768_MergeAlternately_Tests(string word1, string word2, string result)
    {
        var actual = LC75_ArrayProblems.Problem_1768_MergeAlternately(word1, word2);

        Assert.Equal(result, actual);
    }
    #endregion
}