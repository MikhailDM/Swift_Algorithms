import Foundation

public class ExecutionTimer {
    
    private var startTime: CFAbsoluteTime = 0.0
    private var message = ""
    public init() { }
    
    public func start(with text: String) {
        message = text
        startTime = CFAbsoluteTimeGetCurrent()
        print("===== \(text). Exeqution Timer Start")
    }
    
    public func finish() {
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime
        print("===== \(message). Exeqution Timer Finish. Exeqution Time: \(executionTime) seconds")
    }
}
