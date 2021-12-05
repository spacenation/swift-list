import XCTest
import List

final class NonEmptyListReduceTests: XCTestCase {
    
    func testNonEmptyListReduce() {
        XCTAssertEqual(NonEmptyList<Int>(head: 1, tail: [2, 3]).reduce(0, +), 6)
    }
    
    func testNonEmptyListFoldLeft() {
        XCTAssertEqual(NonEmptyList<Int>(head: 1, tail: [2, 3]).foldLeft(0, -), -6)
    }

    func testNonEmptyListFoldRight() {
        XCTAssertEqual(NonEmptyList<Int>(head: 1, tail: [2, 3]).foldRight(0, -), 2)
    }
}
