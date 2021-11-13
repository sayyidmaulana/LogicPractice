import UIKit

var array = [ "1","2","Fizz","4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "Fizz Buzz" ]

for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("Fizz Buzz")
        } else {
            print("Fizz")
        }
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

print("\n")

var fizz = "Fizz";
var buzz = "Buzz";

for i in 1...15 {
  if i % 2 == 0 && i % 3 == 0 {
        print(fizz)
  } else if i % 3 == 0 {
    print(buzz)
  } else if i % 2 == 0 {
    print(fizz,buzz)
  }
}

//

var elementA = [1,2,4,4,5,6,7,7,8,8]
var elementB = [1,2,4,4,5,8,9,9,12,19]
var elementC = [-9.3,-0.5,0.25,0.3,1.34]

let param1 = 12
let param2 = 4
let param3 = -7.96

func findDuplicates(sortedArray array: [Int]) -> [Int]
{
    var duplicates: [Int] = []

    var prevItem = 0
    var addedItem = 0

    for item in array
    {
        if(prevItem == item && addedItem != item)
        {
            duplicates.append(item)
            addedItem = item
        }

        prevItem = item
    }

    return duplicates
}

func sortElement(element: [Int]) -> [Int]
{
    return element.sorted(by: { return $0<$1 })
}

findDuplicates(sortedArray: sortElement(element: elementA))
findDuplicates(sortedArray: sortElement(element: elementB))
//findDuplicates(sortedArray: sortElement(element: elementC))

