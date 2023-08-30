// 1071. Greatest Common Divisor of Strings
// Easy
//
// For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).
// Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
//
// Example 1:
// Input: str1 = "ABCABC", str2 = "ABC"
// Output: "ABC"
//
// Example 2:
// Input: str1 = "ABABAB", str2 = "ABAB"
// Output: "AB"
//
// Example 3:
// Input: str1 = "LEET", str2 = "CODE"
// Output: ""
//
// Constraints:
// 1 <= str1.length, str2.length <= 1000
// str1 and str2 consist of English uppercase letters.

#include "solutions.h"

bool checkSubstrings(std::string str, std::string substr, int length);

std::string problem_1071_gcdOfStrings(std::string str1, std::string str2) {
    auto length = std::min(str1.length(), str2.length());

    while (length > 0) {
        if (str1.length() % length == 0 
            && str2.length() % length == 0
            && str1.substr(0, length) == str2.substr(0, length)) {

            auto substr = str1.substr(0, length);
            
            if (checkSubstrings(str1, substr, length) && checkSubstrings(str2, substr, length)) {
                return substr;
            }
        }
        
        length--;
    }

    return std::string();
}

bool checkSubstrings(std::string str, std::string substr, int length) {
    auto count = str.length() / length;

    for (size_t i = 0; i < count; i++)
    {
        if (str.substr(i * length, length) != substr) {
            return false;
        }
    }
    
    return true;
}