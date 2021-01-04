import Foundation

/*
 Число-палиндром с обеих сторон (справа налево и слева направо) читается одинаково.
 Самое большое число-палиндром, полученное умножением двух двузначных чисел – 9009 = 91 × 99.
 Найдите самый большой палиндром, полученный умножением двух трехзначных чисел.
*/

enum MultiType: Int {
    case twoDigits = 99
    case threeDigits = 999
}

func solution(of digitsType: MultiType) -> Int {
    var max = digitsType.rawValue
    var multiplicator = max
    var minMultiplicator = 1
    var result = max * max
    var polindroms = [Int]()
    let digitsCount = String(result).count
    
    while true {
        guard String(max).count == digitsCount / 2,
              max > minMultiplicator else { break }
        guard String(multiplicator).count == digitsCount / 2,
              multiplicator > minMultiplicator else {
            max -= 1
            multiplicator = max
            continue
        }
        result = max * multiplicator
        guard isPalindrom(num: result) else {
            multiplicator -= 1
            continue
        }
        minMultiplicator = multiplicator
        polindroms.append(result)
        max -= 1
        multiplicator = max
        guard String(max).count != digitsCount / 2 else { continue }
        break
    }
    return polindroms.max()!
}

func isPalindrom(num: Int) -> Bool {
    let first = String(num)
    let second = String(String(num).reversed())
    return first == second ? true : false
}

print(isPalindrom(num: 9009))
print(isPalindrom(num: 9005))
print(isPalindrom(num: 900009))

print(solution(of: .twoDigits))
print(solution(of: .threeDigits))
