import Foundation

public class ExecutionTimer {
    
    private var message = ""
    public init() { }
    
    var startTime: CFAbsoluteTime = 0.0
    
    public func start(with text: String) {
        message = text
        print("===== \(text). Exeqution Timer Start")
        startTime = CFAbsoluteTimeGetCurrent()
    }
    
    public func finish() {
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime
        print("===== \(message). Exeqution Timer Finish. Exeqution Time: \(executionTime) seconds")
    }
    
}//
