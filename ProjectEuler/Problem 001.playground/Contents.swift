import Foundation

/*
 Если выписать все натуральные числа меньше 10, кратные 3 или 5, то получим 3, 5, 6 и 9.
 Сумма этих чисел равна 23.
 Найдите сумму всех чисел меньше 1000, кратных 3 или 5.
*/

func solution(max: Int) -> Int {
    return Array(1..<max)
        .filter { num -> Bool in
            num % 3 == 0 || num % 5 == 0
        }
        .reduce(0) { $0 + $1 }
}

print(solution(max: 10))
print(solution(max: 1000))
