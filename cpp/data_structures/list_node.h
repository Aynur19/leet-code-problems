#pragma once

struct ListNode {
    int val;
    ListNode *next;
    
    ListNode();
    ListNode(int x);
    ListNode(int x, ListNode *next);

    static bool Equals(const ListNode *l1, const ListNode *l2);
};