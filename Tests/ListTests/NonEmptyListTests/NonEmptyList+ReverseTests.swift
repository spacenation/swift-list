import XCTest
import List

final class NonEmptyListReverseTests: XCTestCase {
    
    func testNonEmptyListReverse() {
        XCTAssertEqual(
            NonEmptyList<Int>(head: 1, tail: [2, 3]).reversed,
            NonEmptyList<Int>(head: 3, tail: [2, 1])
        )
    }
}
