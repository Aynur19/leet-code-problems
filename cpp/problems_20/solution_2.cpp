#include "solutions_0_20.h"


// Approach: Linked List
// Time complexity: O(n) => 39 ms
// Space complexity: O(n) => 14.29 MB
ListNode* Solutions_0_20::problem_2_addTwoNumbers(ListNode *l1, ListNode *l2) {
    ListNode* result = new ListNode();
    ListNode* tmp = result;
    int tens = 0;
    int sum = 0;

    while (l1 != nullptr || l2 != nullptr) {
        sum += tens;

        if (l1 != nullptr) { 
            sum += l1->val; 
            l1 = l1->next;
        }

        if (l2 != nullptr) { 
            sum += l2->val; 
            l2 = l2->next;
        }

        tens = sum / 10;
        
        tmp->next = new ListNode(sum % 10);
        tmp = tmp->next;
        sum = 0;
    }

    if (tens > 0) {
        tmp->next = new ListNode(tens);
    }

    return result->next;
}