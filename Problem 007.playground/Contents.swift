import Foundation

/*
 Выписав первые шесть простых чисел, получим 2, 3, 5, 7, 11 и 13.
 Очевидно, что 6-ое простое число - 13.
 Какое число является 10001-ым простым числом?
*/

class Solution {
    
    var max: Int
    
    init(max: Int) {
        self.max = max
    }
    
    func isNatural(num: Int) -> Bool {
        guard num >= 2 else { return false }
        guard num != 2 else { return true }
        guard num % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(num))), by: 2).contains { num % $0 == 0 }
    }
    
    func getResult() -> Int {
        var naturals = [2]
        var i = 3
        while naturals.count < max {
            if isNatural(num: i) { naturals.append(i) }
            i += 2
        }
        print("===== List: \(naturals)")
        return naturals.last ?? 0
    }
    
}//

let solution10 = Solution(max: 6)
print("===== Result: \(solution10.getResult())")

print("")

let solution1001 = Solution(max: 10001)
print("===== Result: \(solution1001.getResult())")




//Массив натуральных чисел с верхней границей. Решето Эрастофена
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
