import Foundation

public func quickSort(of array: [Int]) -> [Int] {
    guard array.count >= 2 else { return array }
    let pivot = array[0]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    return quickSort(of: less) + equal + quickSort(of: greater)
}
