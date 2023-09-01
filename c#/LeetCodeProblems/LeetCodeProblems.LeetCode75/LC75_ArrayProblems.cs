using System.Text;

namespace LeetCodeProblems.LeetCode75;

public static class LC75_ArrayProblems
{
    public static string Problem_1768_MergeAlternately(string word1, string word2)
    {
        var minCount = Math.Min(word1.Length, word2.Length);
        var result = new StringBuilder();

        for (int i = 0; i < minCount; i++)
        {
            result.Append(word1[i]);
            result.Append(word2[i]);
        }

        while (word1.Length > minCount)
        {
            result.Append(word1[minCount]);
            minCount++;
        }

        while (word2.Length > minCount)
        {
            result.Append(word2[minCount]);
            minCount++;
        }

        return result.ToString();
    }
}