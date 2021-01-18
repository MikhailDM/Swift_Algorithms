import Foundation

public func fact(of num: Int) -> Int {
    guard num >= 1 else { return 1 }
    return (num * fact(of: num - 1))
}
