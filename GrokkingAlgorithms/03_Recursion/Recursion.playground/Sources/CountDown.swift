import Foundation

public func countDown(for num: Int) {
    guard num >= 0 else { return }
    print(num)
    countDown(for: num - 1)
}
