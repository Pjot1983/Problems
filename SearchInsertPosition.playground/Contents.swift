import UIKit

//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.
//
//
//
//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2


func searchPosition(arr: [Int], target: Int) -> Int {
    
    var leftIndex = 0
    var rightIndex = arr.count-1

    let sorted = arr.sorted()
    
    while leftIndex <= rightIndex {
        
        let midIndex = leftIndex + (rightIndex - leftIndex)/2
        let midValue = sorted[midIndex]
        
        if midValue == target {return midIndex}
        
        if midValue > target {
            
            rightIndex = midIndex - 1
            
        } else {
            
            leftIndex = midIndex + 1
        }
    }
    
    return leftIndex
        
}
    


let test = [1, 2, 3, 4, 5, 6, 7, 8]

searchPosition(arr: test, target: 7)
    
    
    
    

