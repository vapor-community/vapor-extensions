import XCTest
@testable import VaporExtensions

final class VaporExtensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(VaporExtensions().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
