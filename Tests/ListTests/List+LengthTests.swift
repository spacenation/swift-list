import XCTest
import List

final class ListLengthTests: XCTestCase {

    func testListLength() {
        XCTAssertEqual(List<Int>([1, 2, 3]).length, 3)
    }
    
    func testEmptyListLength() {
        XCTAssertEqual(List<Int>.empty.length, 0)
    }

    static var allTests = [
        ("testEmptyListLength", testEmptyListLength)
    ]
}
