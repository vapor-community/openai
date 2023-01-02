import XCTest
@testable import openai

final class openaiTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(openai().text, "Hello, World!")
    }
}
