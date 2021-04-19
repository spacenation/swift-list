import XCTest
import List

final class NonEmptyListLengthTests: XCTestCase {

    func testEmptyListLength() {
        XCTAssertEqual(NonEmptyList(1, [2,3]).length, 3)
    }

    static var allTests = [
        ("testEmptyListLength", testEmptyListLength)
    ]
}
