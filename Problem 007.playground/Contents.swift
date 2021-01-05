import Foundation

/*
 Выписав первые шесть простых чисел, получим 2, 3, 5, 7, 11 и 13.
 Очевидно, что 6-ое простое число - 13.
 Какое число является 10001-ым простым числом?
*/

class Solution {
    
    var max: Int
    var primes = [Int]()
    
    init(max: Int) {
        self.max = max
    }
    
    /*
     N = 10001
     def divisible(n,plist):
         for p in plist:
             if n%p == 0:
                 return True
             else:
                 pass
         return False
     P = [2]
     for i in range(1,N):
         s = P[i-1] + 1
         while s:
             if divisible(s,P):
                 s += 1
                 continue
             else:
                 break
         P += [s]
     print(P[-1])
     */
    func isNatural(num: Int) -> Bool {
        guard num >= 3 else { return false }
        guard num != 2 else { return true }
        for y in stride(from: 3, through: Int(sqrt(Double(num))), by: 2) {
            if num % y == 0 { return false }
        }
        return true
//        prime = True
//        for i in range(2, int(math.sqrt(n)+1)):
//            if n % i == 0:
//                prime = False
//        if prime:
//            prime_list.append(n)
        
//        guard num >= 2 else { return false }
//        guard num != 2 else { return true }
//        guard num % 2 != 0 else { return false }
//        return !stride(from: 3, through: Int(sqrt(Double(num))), by: 2).contains { num % $0 == 0 }
    }
    
    func getResult() -> Int {
        var i = 2
        while primes.count < max {
            guard i != 2 else { primes.append(i); i += 1; continue }
            if isNatural(num: i) { primes.append(i) }
            i += 2
        }
        print("===== List: \(primes)")
        return primes.last ?? 0
    }
    
}//

let solution10 = Solution(max: 6)
print("===== Result: \(solution10.getResult())")

print("")

let solution1001 = Solution(max: 10001)
print("===== Result: \(solution1001.getResult())")

/*
 # This function is called repeatedly by the generate_num() function
 def check_prime(n):
     prime = True
     for i in range(2, int(math.sqrt(n)+1)):
         if n % i == 0:
             prime = False
     if prime:
         prime_list.append(n)


 def generate_num():
     i = 2
     while True:
         check_prime(i)
         if len(prime_list) >= limit:
             return prime_list[-1]
         i += 1


 print(generate_num()) # Output is: 104743
 */



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
