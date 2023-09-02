using System.Text;

namespace LeetCodeProblems.LeetCode75;

public static class LC75_ArrayProblems
{
    #region Problem 238. Product of Array Except Self
    public static int[] Problem_238_ProductExceptSelf(int[] nums)
    {
        var n = nums.Length;
        var result = new int[n];
        result[0] = 1;

        for (var i = 1; i < n; i++)
        {
            result[i] = result[i - 1] * nums[i - 1];
        }

        var right = 1;
        for (int i = n - 2; i >= 0; i--)
        {
            result[i] *= right * nums[i + 1];
            right *= nums[i + 1];
        }

        return result;
    }

    #endregion

    #region Problem 151. Reverse Words in a String
    public static string Problem_151_ReverseWords(string s)
    {
        return string.Join(' ', s
            .Split(' ', StringSplitOptions.RemoveEmptyEntries)
            .Reverse());
    }
    #endregion

    #region Problem 345. Reverse Vowels of a String
    public static string Problem_345_ReverseVowels(string s)
    {
        var vowels = new char[] { 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' };
        var left = 0;
        var right = s.Length - 1;

        var result = new StringBuilder(s);

        while (left < right)
        {
            var leftCharIsContains = vowels.Contains(result[left]);
            var rightCharIsContains = vowels.Contains(result[right]);
            
            if (leftCharIsContains && rightCharIsContains)
            {
                (result[right], result[left]) = (result[left], result[right]);
                
                right--;
                left++;
                continue;
            }

            if (!rightCharIsContains)
            {
                right--;
            }


            if (!leftCharIsContains)
            {
                left++;
            }
        }

        return result.ToString();
    }
    #endregion

    #region Problem 605. Can Place Flowers
    public static bool Problem_605_CanPlaceFlowers(int[] flowerbed, int n)
    {
        if (flowerbed[0] == 0)
        {
            flowerbed[0] = 2;
            n--;
        }

        for (int i = 1; i < flowerbed.Length; i++)
        {
            if (flowerbed[i] == 1)
            {
                if (flowerbed[i - 1] == 2)
                {
                    flowerbed[i - 1] = 0;
                    n++;
                }
            } 
            else if (flowerbed[i - 1] == 0)
            {
                flowerbed[i] = 2;
                n--;
            }
        }


        return n <= 0;
    }
    #endregion

    #region Problem 1431. Kids With the Greatest Number of Candies
    public static IList<bool> Problem_1431_KidsWithCandies(int[] candies, int extraCandies)
    {
        var max = candies.Max();
        var result = new List<bool>(candies.Length);

        for (int i = 0; i < candies.Length; i++)
        {
            if (candies[i] + extraCandies >= max)
            {
                result.Add(true);
            }
            else
            {
                result.Add(false);
            }
        }

        return result;
    }
    #endregion

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