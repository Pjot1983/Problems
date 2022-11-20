//Given an integer x, return true if x is a palindrome, and false otherwise.

//Input: x = 121
//Output: true
//Explanation: 121 reads as 121 from left to right and from right to left.

import SwiftUI

func palindromNumber (num: Int) -> Bool {
    
    let str = String(num)
    let strArray = Array(str)

    var leftIndex = strArray.startIndex
    var rightIndex = strArray.endIndex - 1

    var leftP = strArray[leftIndex]
    var rightP = strArray[rightIndex]
    
    while leftIndex != rightIndex && leftIndex == rightIndex  {
        
        if leftP == rightP {
            
            leftIndex += 1
            leftP = strArray[leftIndex]
            rightIndex -= 1
            rightP = strArray[rightIndex]
        
        } else {
            
            return false
        }
    }
  
    return true

}

palindromNumber(num: 125521)










