import XCTest
@testable import SimplePackage

final class SimplePackageTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SimplePackage().text, "Hello, World!")
    }
}
