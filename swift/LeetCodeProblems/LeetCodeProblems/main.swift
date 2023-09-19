//
//  main.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 29.08.2023.
//

import Foundation

var lRUCache = LRUCache(1);
lRUCache.put(2, 1)      // 2: 1
print(lRUCache.get(2))  // 1
lRUCache.put(3, 2)      // 3: 2
print(lRUCache.get(2))  // -1
print(lRUCache.get(3))  // 2

//"LRUCache","put","put","get","put","get","put","get","get","get"]
//[[2],[1,1],[2,2],[1],[3,3],[2],[4,4],[1],[3],[4]]

//["LRUCache","put","get","put","get","get"]
//[[1],[2,1],[2],[3,2],[2],[3]]
