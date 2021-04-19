import XCTest
import List

final class ListDropTests: XCTestCase {

    func testListDropShorter() {
        XCTAssertEqual(List<Int>([1, 2, 3, 4]).drop(2), [3, 4])
    }
    
    func testListDropLonger() {
        XCTAssertEqual(List<Int>([1, 2, 3]).drop(4), [])
    }
    
    func testEmptyListDrop() {
        XCTAssertEqual(List<Int>.empty.drop(2), .empty)
    }

    static var allTests = [
        ("testListDropShorter", testListDropShorter),
        ("testListDropLonger", testListDropLonger),
        ("testEmptyListDrop", testEmptyListDrop)
    ]
}
