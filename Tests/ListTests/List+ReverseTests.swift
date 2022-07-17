import XCTest
import List

final class ListReverseTests: XCTestCase {

    func testListReverse() {
        XCTAssertEqual(List<Int>([1, 2, 3]).reversed, [3, 2, 1])
    }
    
    func testEmptyListReverse() {
        XCTAssertEqual(List<Int>.empty.reversed, .empty)
    }

    static var allTests = [
        ("testListReverse", testListReverse),
        ("testEmptyListReverse", testEmptyListReverse),
    ]
}
