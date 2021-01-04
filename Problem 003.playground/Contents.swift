import Foundation

/*
 Простые делители числа 13195 - это 5, 7, 13 и 29.
 Каков самый большой делитель числа 600851475143, являющийся простым числом?
*/

func solution(of num: Int) -> Int {
    guard num > 1 else { return 1 }
    var dividers = [Int]()
    var max = num
    var divider = 2
    while max != 1 {
        guard max % divider == 0 else {
            divider += 1
            continue
        }
        max /= divider
        dividers.append(divider)
        guard max != 1 else { break }
    }
    print("==== All simple dividers for \(num): \(dividers)")
    return divider
}

print(solution(of: 8))
print(solution(of: 10))
print(solution(of: 13195))
print(solution(of: 600851475143))
