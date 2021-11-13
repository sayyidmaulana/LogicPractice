import UIKit

func isPalindrome(_ word: String) -> Bool {
    let word = word.filter { $0 != " " }
    for (i, character) in word.enumerated() {
        if character != Array(word)[word.count-i-1] {
            print("Not palindrome")
            return false
        }
    }
    print("Palindrome")
    return true
}

isPalindrome("RADAR")
isPalindrome("MALAM")
isPalindrome("KASUR INI RUSAK")
isPalindrome("IBU RATNA ANTAR UBI")
isPalindrome("MALAS")
isPalindrome("MAKAN NASI GORENG")
isPalindrome("BALONKU ADA LIMA")

print("\n")

func palindrome(string: String)-> Bool{
    let char = Array(string)
    for i in 0..<char.count / 2 {
        if char[i] != char[char.count - 1 - i] {
            print("It is not palindrome")
            return false
        }
    }
    print("It is palindrome")
    return true
}

palindrome(string: "RADAR")
palindrome(string: "MALAM")
palindrome(string: "KASUR INI RUSAK")
palindrome(string: "IBU RATNA ANTAR UBI")
palindrome(string: "MALAS")
palindrome(string: "MAKAN NASI GORENG")
palindrome(string: "BALONKU ADA LIMA")
