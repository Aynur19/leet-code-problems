#include "lc75_arrayProblems.h"

int problem_443_compress(std::vector<char>& chars) {
    if (chars.empty()) { return 0; }

    int n = chars.size();
    chars.push_back(chars[0]);
    int count = 1;

    for (int i = 1; i < n; i++)
    {
        if (chars[i] == chars.back()) {
            count++;
        } else {
            if (count > 1) {
                auto countStr = std::to_string(count);
                for (char character : countStr) {
                    chars.push_back(character);
                }
            }

            chars.push_back(chars[i]);
            count = 1;
        }
    }
    
    if (count > 1) {
        auto countStr = std::to_string(count);
        for (char character : countStr) {
            chars.push_back(character);
        }
    }

    chars.erase(chars.begin(), chars.begin() + n);
    return chars.size();
}

bool problem_334_increasingTriplet(std::vector<int>& nums) {
    int n = nums.size();
    if (n < 3) { return false; }

    int left = INT_MAX;
    int middle = INT_MAX;

    for(auto& number : nums) {
        if (number > middle) {
            return true;
        }
        else if (number > left && number < middle) {
            middle = number;
        }
        else if (number < left) {
            left = number;
        }
    }

    return false;
}

std::vector<int> problem_238_productExceptSelf(std::vector<int>& nums) {
    int count = nums.size();
    std::vector<int> result(count, 1);
    int tmp = 1;
    
    for (int i = 1; i < count; i++) {
        result[i] = result[i - 1] * nums[i - 1];
    }

    for (int i = count - 2; i >= 0; i--) {
        tmp = tmp * nums[i + 1];
        result[i] = result[i] * tmp;
    }

    return result;
}

std::string problem_151_reverseWords(std::string s) {
    std::stringstream ss(s);
    std::string word;

    s.clear();

    while (ss >> word)
    {
        s = word + " " + s;
    }

    
    return s.substr(0, s.length() - 1);   
}

std::string problem_345_reverseVowels(std::string s) {
    std::vector<char> vowels = { 'A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u' };
    std::vector<char> wordVowels;

    auto size = s.length();
    for (size_t i = 0; i < size; i++)
    {
        if (std::find(vowels.begin(), vowels.end(), s[i]) != vowels.end()) {
            wordVowels.push_back(s[i]);
        }
    }
    
    std::reverse(wordVowels.begin(), wordVowels.end());
    int idx = 0;
    for (size_t i = 0; idx < wordVowels.size(); i++)
    {
        if (i >= size) { break; }
        if (std::find(vowels.begin(), vowels.end(), s[i]) != vowels.end()) {
            s[i] = wordVowels[idx];
            idx++;
        }
    }
    
    return s;
}

bool problem_605_canPlaceFlowers(std::vector<int>& flowerbed, int n) {
    if (flowerbed[0] == 0) {
        flowerbed[0] = 2;
        n--;
    }

    for (size_t i = 1; i < flowerbed.size(); i++) {
        if (flowerbed[i] == 0) {
            if (flowerbed[i - 1] == 0) {
                flowerbed[i] = 2;
                n--;
            }
        } else {
            if (flowerbed[i - 1] == 2) {
                flowerbed[i - 1] = 0;
                n++;
            }
        }
    }

    return n <= 0;       
}

std::vector<bool> problem_1431_kidsWithCandies(std::vector<int>& candies, int extraCandies) {
    auto max = *std::max_element(candies.begin(), candies.end());
    std::vector<bool> result;

    for (size_t i = 0; i < candies.size(); i++) {
        candies[i] += extraCandies;
        result.push_back(candies[i] >= max);
    }
    
    return result;
}

std::string problem_1071_gcdOfStrings(std::string str1, std::string str2) {
    auto length = std::min(str1.length(), str2.length());

    while (length > 0) {
        if (str1.length() % length == 0 && str2.length() % length == 0) {
            auto substr = str1.substr(0, length);
            auto count = str1.length() / substr.length();
            bool isValid = true;

            for (size_t i = 0; i < count; i++) {
                if (str1.substr(i * length, length) != substr) { 
                    isValid = false;
                    break; 
                }
            }
            
            if (isValid) {
                count = str2.length() / substr.length();
                for (size_t i = 0; i < count; i++) {
                    if (str2.substr(i * length, length) != substr) { 
                        isValid = false;
                        break; 
                    }
                }
            }

            if (isValid) { break; }
        }
        
        length--;
    }

    return length > 0 ? str1.substr(0, length) : std::string();
}

std::string problem_1768_mergeAlternately(std::string word1, std::string word2) {
    std::string result;
    result.reserve(word1.length() + word2.length());

    auto minCount = std::min(word1.length(), word2.length());
    auto idx = 0;
    while (idx < minCount)
    {
        result += word1[idx];
        result += word2[idx];
        idx++;
    }

    while (minCount < word1.length()) {
        result += word1[minCount];
        minCount++;
    }

    while (minCount < word2.length()) {
        result += word2[minCount];
        minCount++;
    }

    return result;
}