#include "list_node.h"

ListNode::ListNode() : val(0), next(nullptr) { };

ListNode::ListNode(int x) : val(x), next(nullptr) { };

ListNode::ListNode(int x, ListNode *next) : val(x), next(next) { };

bool ListNode::Equals(const ListNode *l1, const ListNode *l2) {
    while (l1 != nullptr && l2 != nullptr) {
        if (l1->val != l2->val) { return false; }

        l1 = l1->next;
        l2 = l2->next;
    }

    return l1 == nullptr && l2 == nullptr;
};