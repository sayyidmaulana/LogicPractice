import UIKit

var greeting = "Hello, playground"

func fibMemoization(_ n: Int) -> Int {
    var fibMemo: [Int: Int] = [0: 0, 1: 1]
    func fibMemRec(_ n: Int) -> Int {
        if let result = fibMemo[n] {
            return result
        } else {
            fibMemo[n] = fibMemRec(n - 1) + fibMemRec(n - 2)
        }
        return fibMemo[n]!
    }
    return fibMemRec(n)
}

fibMemoization(10)
