import Foundation

/*
 Сумма квадратов первых десяти натуральных чисел равна
 1^2 + 2^2 + ... + 10^2 = 385
 Квадрат суммы первых десяти натуральных чисел равен
 (1 + 2 + ... + 10)^2 = 552 = 3025
 Следовательно, разность между суммой квадратов и квадратом суммы первых десяти натуральных чисел составляет 3025 − 385 = 2640.
 Найдите разность между суммой квадратов и квадратом суммы первых ста натуральных чисел.
*/

class Solution {
    
    var max: Int
    
    init(max: Int) {
        self.max = max
    }
    
    func getResult() -> Int {
        let sumOfPowersInt = sumOfPowers()
        let powerOfSumInt = powerOfSum()
        let result = powerOfSumInt - sumOfPowersInt
        print("===== sumOfPowers: \(sumOfPowersInt)")
        print("===== powerOfSum: \(powerOfSumInt)")
        return result
    }
    
    private func sumOfPowers() -> Int {
        return (max * (max + 1) * (2 * max + 1)) / 6
    }
    
    private func powerOfSum() -> Int {
        let sum = Array(1...max).reduce(0) { $0 + $1 }
        return sum * sum
    }
    
}

let solution10 = Solution(max: 10)
print("===== Result of 10 is: \(solution10.getResult())")

let solution20 = Solution(max: 100)
print("===== Result of 100 is: \(solution20.getResult())")

