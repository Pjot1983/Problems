import UIKit

//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//
//
//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"

func longestCommonPrefix (arr: [String]) -> String {
    
    if var prefixStr = arr.first {
        
        for i in 0..<arr.count{
           let singleWord = arr[i]
            
            while singleWord.contains(prefixStr) == false {
                let index = prefixStr.index(prefixStr.startIndex, offsetBy: prefixStr.count - 1)
                prefixStr = String(prefixStr[..<index])
                if prefixStr.count == 0 {
                    return ""
                }
            }
        }
        return prefixStr
    }
    
    return ""
    
}

longestCommonPrefix(arr: ["flower", "florida", "fliw"])

let example = ["flower", "florida", "flow"]

let prefixStr = example.first
print(prefixStr)

for i in 0..<example.count{
    let singleWord = example[i]
    print(singleWord)
}

