namespace LeetCodeProblems.LeetCode75.Tests;

public class LC75_ArrayProblemsTests
{
    #region 1768. Merge Strings Alternately

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