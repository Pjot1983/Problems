


//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
//
//
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

import SwiftUI

func arrayTwoSum (nums: [Int], target: Int) -> [Int] {


    var leftPoint = nums.startIndex
    var rightPoint = nums.endIndex - 1
    
    var leftNum = nums[leftPoint]
    var rightNum = nums[rightPoint]
    
    var finalArray = [Int]()
    
    guard rightNum + nums[nums.endIndex - 2] >= target else { return [0,0,0]}
            
    while leftNum + rightNum != target {
        if leftNum + rightNum > target {
            
                rightPoint -= 1
                rightNum = nums[rightPoint]
            
            } else if leftNum + rightNum < target {
                
                leftPoint += 1
                leftNum = nums[leftPoint]
            }
    }
    
        if leftNum + rightNum == target {
            finalArray.append(rightPoint)
            finalArray.append(leftPoint)
        }

    return finalArray.sorted()
}

var example = [2, 3, 5, 7, 9, 13, 15]

arrayTwoSum(nums: example, target: 28)


