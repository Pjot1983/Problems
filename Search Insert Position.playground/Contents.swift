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



func searchPosition (arr: [Int], target: Int) -> Int {
    
    var sorted = arr.sorted()
    
    var index = 0
    
    for i in 0..<sorted.count - 1 {
        
        if arr[i] == target {
            
            index = i
            
        }
    }
    
    return index
}


func searchPositionNew (arr: [Int], target: Int) -> Int {
    
    var indexValue = 0
    var index = 0
    var leftIndex = 0
    var rightIndex = arr.count-1

    let sorted = arr.sorted()


//    while leftIndex != rightIndex {
        
        if sorted[leftIndex]+sorted[rightIndex]/2 > target {
            
//            indexValue = sorted[leftIndex]+sorted[rightIndex]/2
            rightIndex -= 1
        
        } else if sorted[leftIndex]+sorted[rightIndex]/2 < target{
//            indexValue = sorted[leftIndex]+sorted[rightIndex]/2
            leftIndex += 1
        } else if sorted[leftIndex]+sorted[rightIndex]/2 == target {
            
            index = rightIndex+leftIndex/2
 
        }

        
    }
    
    return index
    
}

let array = [1,4,5,39389,6,445,93049,3434,3232,5336,530394,94394394,34,3,5494]

let test = [1, 2, 3, 4, 5, 6, 7, 8]




searchPositionNew(arr: test, target: 6)
    
    
    
    

