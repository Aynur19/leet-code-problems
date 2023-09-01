using System.Text;

namespace LeetCodeProblems.LeetCode75;

public static class LC75_ArrayProblems
{
    #region Problem 1071. Greatest Common Divisor of Strings
    public static string Problem_1071_GcdOfStrings(string str1, string str2)
    {
        var count = Math.Min(str1.Length, str2.Length);
        var concatString = str1 + str2;
        var result = string.Empty;

        while (count > 0)
        {
            if (str1[0..count] == str2[0..count]
                && str1.Length % count == 0
                && str2.Length % count == 0)
            {
                var substring = concatString[0..count];
                var substringsCount = concatString.Length / count;
                var isValid = true;

                for (int i = 0; i < substringsCount; i++)
                {
                    var idx = i * count;
                    if (concatString[idx..(idx + count)] != substring)
                    {
                        isValid = false;
                        break;
                    }
                }

                if (isValid)
                {
                    result = concatString[0..count];
                    break;
                }
            }

            count--;
        }

        return result;
    }
    #endregion

    #region Problem 1768. Merge Strings Alternately
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
    #endregion
}