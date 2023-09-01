namespace LeetCodeProblems.LeetCode75.Tests;

public class LC75_ArrayProblemsTests
{
    #region Problem 1071. Greatest Common Divisor of Strings
    [Theory]
    [InlineData("ABCABC", "ABC", "ABC")]
    [InlineData("ABABAB", "ABAB", "AB")]
    [InlineData("LEET", "CODE", "")]
    public static void Problem_1071_GcdOfStrings(string str1, string str2, string result)
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
    public static void Problem_1768_MergeAlternately(string word1, string word2, string result)
    {
        var actual = LC75_ArrayProblems.Problem_1768_MergeAlternately(word1, word2);

        Assert.Equal(result, actual);
    }
    #endregion
}