//You are given the heads of two sorted linked lists list1 and list2.
//
//Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
//
//Return the head of the merged linked list.
//
// Input: list1 = [1,2,4], list2 = [1,3,4]
//Output: [1,1,2,3,4,4]

import SwiftUI
import UIKit

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    if l1 == nil && l2 == nil { return nil}
 
    var l1 = l1
    var l2 = l2
    
    var dummy: ListNode? = ListNode(-1)
    var current = dummy
    
    while l1 != nil && l2 != nil {
        let l1Val = l1!.val
        let l2Val = l2!.val
        
        if l1Val < l2Val {
            current?.next = l1
            l1 = l1?.next
        } else {
            current?.next = l2
            l2 = l2?.next
        }
        
        current = current?.next
        
    }
    
    if l1 != nil {
        current?.next = l1
    }
    
    if l2 != nil {
        current?.next = l2
    }
    
    return dummy?.next
    
}

mergeTwoLists(<#T##l1: ListNode?##ListNode?#>, <#T##l2: ListNode?##ListNode?#>)
