import Foundation

public func recursiveSum(of array: [Int]) -> Int {
    guard array.count != 0 else { return 0 }
    return (array.last! + recursiveSum(of: array.dropLast()))
}
