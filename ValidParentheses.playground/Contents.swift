//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.
//
//
//Example 1:
//
//Input: s = "()"
//Output: true
//Example 2:
//
//Input: s = "()[]{}"
//Output: true
//Example 3:
//
//Input: s = "(]"
//Output: false

import SwiftUI

func validPar (s: String) -> Bool {
    
    
    let possiblePar: [Character:Character] = [")":"(", "}":"{", "]":"["]
    
    var stack = [Character]()
    
    guard s.count % 2 == 0 else { return false }
    
    for char in s {
       
        if char == "(" || char == "{" || char == "[" {
            stack.append(char)
            print(stack)
            
        } else {
            guard let lastChar = stack.last, lastChar == possiblePar[char]! else {
                return false
                
            }
            stack.removeLast()
        }
        
        
    }
    
    return stack.count == 0
}


validPar(s: "([])")


