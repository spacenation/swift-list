import XCTest
import List

final class NonEmptyListLengthTests: XCTestCase {

    func testEmptyListLength() {
        XCTAssertEqual(NonEmptyList(head: 1, tail: [2,3]).length, 3)
    }
}
