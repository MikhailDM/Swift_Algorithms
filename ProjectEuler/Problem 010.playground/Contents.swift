import Foundation

//MARK: - Problem Description

/*
 Найдите сумму всех простых чисел меньше двух миллионов
*/

//MARK: - Execution Timer

let executionTimer = ExecutionTimer()

//MARK: - Logic

class Solution {
    
    var max: Int
    var primes = [Int]()
    
    init(max: Int) {
        self.max = max
    }
    
    func getResult() -> Int {
        var allNums = Array(2...max)
        var testValue = 2
        while (testValue.powerOf2() <= max) {
            allNums.removeAll(where: {$0 >= testValue.powerOf2() && $0.isMultiple(of: testValue)})
            testValue = allNums.first(where: {$0 > testValue})!
        }
        return allNums.reduce(0, +)
    }

}//

extension Int {
    func powerOf2() -> Int {
        return self * self
    }
}

//MARK: - Solutions

let solution10 = Solution(max: 10)
print("===== Result with length 10: \(solution10.getResult())")

executionTimer.start()
let solution2Bill = Solution(max: 2_000_000)
print("===== Result with length 2_000_000: \(solution2Bill.getResult())")
executionTimer.finish()

//Массив простых чисел с верхней границей. Решето Эрастофена
//func getListOfNaturalsNumbers(maxNum: Int) -> [Int] {
//    var allNums = Array(2...maxNum)
//    for x in 0..<allNums.count {
//        guard allNums[x] != 0 else { continue }
//        guard allNums[x] % 2 != 0 else { continue }
//        for y in stride(from: (2 * x), to: max, by: 2) {
//            allNums[y] = 0
//        }
//    }
//    allNums = allNums.filter { $0 != 0 }
//    //print("===== Naturals List: \(allNums)")
//    return allNums
//}



