import Foundation

/*
 Каждый следующий элемент ряда Фибоначчи получается при сложении двух предыдущих.
 Начиная с 1 и 2, первые 10 элементов будут:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 Найдите сумму всех четных элементов ряда Фибоначчи, которые не превышают четыре миллиона.
*/

class FibIterator : IteratorProtocol {
    var (a, b) = (0, 1)
    func next() -> Int? {
        (a, b) = (b, a + b)
        return a
    }
}

func solution(max: Int) -> Int {
    let fibs = AnySequence{ FibIterator() }
    return fibs
        .prefix{ $0 <= max }
        .filter{ $0 % 2 == 0 }
        .reduce(0){ $0 + $1 }
}

print(solution(max: 8))
print(solution(max: 4000000))
