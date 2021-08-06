import XCTest
@testable import Loggr

final class LoggrTests: XCTestCase {
    func testLogDebugSuccess() {
        let exp: XCTestExpectation = expectation(description: "Log Debug get called with no error")
        
        Loggr.logDebug("Debug Message")
        exp.fulfill()

        wait(for: [exp], timeout: 1.0)
    }
    
    func testLogInfoSuccess() {
        let exp: XCTestExpectation = expectation(description: "Log Info get called with no error")
        
        Loggr.logInfo("Info Message")
        exp.fulfill()

        wait(for: [exp], timeout: 1.0)
    }
    
    func testLogWarningSuccess() {
        let exp: XCTestExpectation = expectation(description: "Log Warning get called with no error")
        
        Loggr.logWarning("Warning Message")
        exp.fulfill()

        wait(for: [exp], timeout: 1.0)
    }
    
    func testLogErrorSuccess() {
        let exp: XCTestExpectation = expectation(description: "Log Error get called with no error")
        
        Loggr.logError("Error Message")
        exp.fulfill()

        wait(for: [exp], timeout: 1.0)
    }

    static var allTests = [
        ("testLogDebugSuccess", testLogDebugSuccess),
        ("testLogInfoSuccess", testLogInfoSuccess),
        ("testLogWarningSuccess", testLogWarningSuccess),
        ("testLogErrorSuccess", testLogErrorSuccess),
    ]
}
