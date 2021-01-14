import Foundation

/*
 2520 - самое маленькое число, которое делится без остатка на все числа от 1 до 10.
 Какое самое маленькое число делится нацело на все числа от 1 до 20?
*/

class Solution {
    
    var list: [Int]
    
    init(list: [Int]) {
        self.list = list
    }
    
    //Результат
    func getResult() -> Int {
        let asd = list.reduce(1) { nok(a: $0, b: $1) }
        return asd
    }
    
    //Наибольший общий делитель. Алгоритм Евклида
    private func nod(a: Int, b: Int) -> Int {
        var (a, b) = (a, b)
        while b > 0 {
            (a, b) = (b, a % b)
        }
        return a
    }
    
    //Наименьшее общее кратное
    private func nok(a: Int, b: Int) -> Int {
        return (a * b) / nod(a: a, b: b)
    }
    
}

let solution10 = Solution(list: Array(1...10))
print(solution10.getResult())

let solution20 = Solution(list: Array(1...20))
print(solution20.getResult())
