import Foundation

public class ExequtionTimer {
    
    public init() { }
    
    var startTime: CFAbsoluteTime = 0.0
    
    public func start() {
        print("===== Exeqution Timer Start")
        startTime = CFAbsoluteTimeGetCurrent()
    }
    
    public func finish() {
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime
        print("===== Exeqution Timer Finish. Exeqution Time: \(executionTime) seconds")
    }
    
}//
