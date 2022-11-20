//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal substring consisting of non-space characters only.
//
//
//
//Example 1:
//
//Input: s = "Hello World"
//Output: 5
//Explanation: The last word is "World" with length 5.

import SwiftUI

func lenghtOfLastWord (str: String) -> Int {
    var number = 0
    
    for element in str.reversed() {
        if element != " " {
            print(element)
            number += 1
        }
        if element == " " && number > 0 {
            return number
        }
    }
    
    return number
    
}

lenghtOfLastWord(str: "Hello world ")

func lastWordLenght (str: String) -> Int {
    
    var number = 0
    var lastIndex = str.count - 1
    
    if str == "" { return 0 }
    
    let separateWord = str.components(separatedBy: " ")
    var separateWordCount = separateWord.count-1
    
    let lastWord = separateWord[separateWord.count-1]
    
    
    
    for _ in lastWord {
        number += 1
    }
    
    return number
    
}

lastWordLenght(str: "Hello, world")
