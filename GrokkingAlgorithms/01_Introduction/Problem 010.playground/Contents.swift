import Foundation

//MARK: - Execution Timer
let executionTimer = ExecutionTimer()

//MARK: - Logic
class BinarySearch {
    
    func binarySearchWithInt(for element: Int, in collection: [Int]) -> Int? {
        var lowIndex = 0
        var highIndex = collection.count - 1
        while lowIndex <= highIndex {
            let midIndex = (lowIndex + highIndex) / 2
            let guessNum = collection[midIndex]
            guard guessNum != element else { return midIndex }
            guessNum < element ? (lowIndex = midIndex + 1) : (highIndex = midIndex - 1)
        }
        return nil
    }
}

//MARK: - Solutions
let binarySearch = BinarySearch()

let input = Array(0...1_000_000)
let goal = 1_000_000

executionTimer.start(with: "Binary")
print("===== Binary. Result with \(goal): \(String(describing: binarySearch.binarySearchWithInt(for: goal, in: input)))")
executionTimer.finish()

print("")

executionTimer.start(with: "Array")
print("===== Array. Result with \(goal): \(String(describing: input.firstIndex(of: goal)))")
executionTimer.finish()



//func binarySearch<Elements: RandomAccessCollection>(
//    for element: Elements.Element,
//    in collection: Elements,
//    in range: Range<Elements.Index>? = nil) -> Elements.Index? where Elements.Element: Comparable {
//    let range = range ?? collection.startIndex..<collection.endIndex
//    guard range.lowerBound < range.upperBound else {
//        return nil
//    }
//    let size = collection.distance(from: range.lowerBound,
//                                   to: range.upperBound)
//    let middle = collection.index(range.lowerBound, offsetBy: size / 2)
//    if collection[middle] == element {
//        return middle
//    } else if collection[middle] > element {
//        return binarySearch(for: element, in: collection, in: range.lowerBound..<middle)
//    } else {
//        return binarySearch(for: element,
//                            in: collection,
//                            in: collection.index(after: middle)..<range.upperBound)
//    }
//}
//
//let array = [1, 2, 10, 43, 55, 60, 150, 1420]
//binarySearch(for: 10, in: array) == 2


