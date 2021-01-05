import Foundation

//MARK: - Problem Description

/*
 Наибольшее произведение четырех последовательных цифр в нижеприведенном 1000-значном числе равно 9 × 9 × 8 × 9 = 5832
 Найдите наибольшее произведение тринадцати последовательных цифр в данном числе
*/

//MARK: - Exeqution Timer

let exequtionTimer = ExequtionTimer()

//MARK: - Logic

class Solution {
    
    var length: Int
    var megaList = [Int]()
    var megaListCount = 0
    var megaString =
            "73167176531330624919225119674426574742355349194934" +
            "96983520312774506326239578318016984801869478851843" +
            "85861560789112949495459501737958331952853208805511" +
            "12540698747158523863050715693290963295227443043557" +
            "66896648950445244523161731856403098711121722383113" +
            "62229893423380308135336276614282806444486645238749" +
            "30358907296290491560440772390713810515859307960866" +
            "70172427121883998797908792274921901699720888093776" +
            "65727333001053367881220235421809751254540594752243" +
            "52584907711670556013604839586446706324415722155397" +
            "53697817977846174064955149290862569321978468622482" +
            "83972241375657056057490261407972968652414535100474" +
            "82166370484403199890008895243450658541227588666881" +
            "16427171479924442928230863465674813919123162824586" +
            "17866458359124566529476545682848912883142607690042" +
            "24219022671055626321111109370544217506941658960408" +
            "07198403850962455444362981230987879927244284909188" +
            "84580156166097919133875499200524063689912560717606" +
            "05886116467109405077541002256983155200055935729725" +
            "71636269561882670428252483600823257530420752963450"
    
    init(length: Int) {
        self.length = length
    }
    
    func getResult() -> Int {
        megaList = megaString.map { Int("\($0)") ?? 0}
        //print(megaList)
        megaListCount = megaList.count
        //print(megaListCount)
        
        var startIndex = 0
        var megaListMaxMulti = 0
        
        while (startIndex + length) <= megaListCount {
            guard let multiplicateResult = multiplicate(startIndex: &startIndex) else { startIndex += 1; continue }
            startIndex += 1
            if multiplicateResult > megaListMaxMulti { megaListMaxMulti =  multiplicateResult }
        }
        return megaListMaxMulti
    }
    
    func multiplicate(startIndex: inout Int) -> Int? {
        let list = Array(megaList[startIndex..<(startIndex + length)])
        guard list.count == length, !list.contains(0) else { return nil }
        return list.reduce(1) { $0 * $1 }
    }

}//

//MARK: - Solutions

let solution4 = Solution(length: 4)
print("===== Result with length 4: \(solution4.getResult())")

exequtionTimer.start()
let solution13 = Solution(length: 13)
print("===== Result with length 13: \(solution13.getResult())")
exequtionTimer.finish()





