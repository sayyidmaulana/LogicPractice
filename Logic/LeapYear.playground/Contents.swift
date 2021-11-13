import UIKit

func isLeapYear(_ year: Int) -> Bool {
    
    if year % 400 == 0 {
        print("Is a Leap Year")
        return true

    } else if year % 100 == 0 {
        print("Is not a Leap Year")
        return false

    } else if year % 4 == 0 {
        print("Is a Leap Year")
        return true
    } else {
        print("This is not a leap year")
        return false
    }

}

isLeapYear(1900)
isLeapYear(2020)
