import UIKit

//You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
//
//Increment the large integer by one and return the resulting array of digits.
//
//
//
//Example 1:
//
//Input: digits = [1,2,3]
//Output: [1,2,4]
//Explanation: The array represents the integer 123.
//Incrementing by one gives 123 + 1 = 124.
//Thus, the result should be [1,2,4].

func plusOneYouTube (digits: [Int]) -> [Int] {
    
    if digits.isEmpty {return []}
    
    var dummy = digits
    
    for digit in stride (from: dummy.count-1, through: 0, by: -1) {
        
        if dummy[digit] == 9 {
            dummy[digit] = 0
        } else {
            dummy[digit] += 1
            return dummy
        }
    }
    
    
    dummy.insert(1, at: 0)
    
    return dummy
}

plusOneYouTube(digits: [2,1,9,1,9])



func plusOne (digits: [Int]) -> [Int] {
    
    guard digits != [] else { return []}
    
    var dummy = digits
    var counter = [Int]()
    
    for i in dummy {
        
        if digits.last != 9 {
            var lastDig = digits.last
            lastDig! += 1
            dummy.remove(at: digits.count-1)
            dummy.append(lastDig!)
        
        } else {
            for element in digits.reversed(){
                
                if element == 9 {
                    dummy[i]
                    
                    counter.append(0)
                    
                }
                
                if element != 9 && !counter.isEmpty {
                    return counter
                }
            }
            
            
          
            
        }
    
        
        
    }
    
    return dummy
    
}


plusOne(digits: [1,2,3,8])
