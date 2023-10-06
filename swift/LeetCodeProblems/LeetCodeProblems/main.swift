//
//  main.swift
//  LeetCodeProblems
//
//  Created by Aynur Nasybullin on 29.08.2023.
//

import Foundation

var hitCounter = HitCounter()
hitCounter.hit(1)
hitCounter.hit(1)
hitCounter.hit(1)

print(hitCounter.getHits(2))
//hitCounter.hit(301)
//print(hitCounter.getHits(301))




//var atm = ATM()
//atm.deposit([0,0,1,2,1])  // Deposits 1 $100 banknote, 2 $200 banknotes,
//                          // and 1 $500 banknote.
//print(atm.withdraw(600))  // Returns [0,0,1,0,1]. The machine uses 1 $100 banknote
//                          // and 1 $500 banknote. The banknotes left over in the
//                          // machine are [0,0,0,2,0].
//atm.deposit([0,1,0,1,1])  // Deposits 1 $50, $200, and $500 banknote.
//                          // The banknotes in the machine are now [0,1,0,3,1].
//print(atm.withdraw(600))  // Returns [-1]. The machine will try to use a $500 banknote
//                          // and then be unable to complete the remaining $100,
//                          // so the withdraw request will be rejected.
//                          // Since the request is rejected, the number of banknotes
//                          // in the machine is not modified.
//print(atm.withdraw(550))  // Returns [0,1,0,0,1]. The machine uses 1 $50 banknote
//                          // and 1 $500 banknote.

//var lRUCache = LRUCache(1);
//lRUCache.put(2, 1)      // 2: 1
//print(lRUCache.get(2))  // 1
//lRUCache.put(3, 2)      // 3: 2
//print(lRUCache.get(2))  // -1
//print(lRUCache.get(3))  // 2

//"LRUCache","put","put","get","put","get","put","get","get","get"]
//[[2],[1,1],[2,2],[1],[3,3],[2],[4,4],[1],[3],[4]]

//["LRUCache","put","get","put","get","get"]
//[[1],[2,1],[2],[3,2],[2],[3]]
