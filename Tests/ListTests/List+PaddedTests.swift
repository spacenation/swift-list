import XCTest
import List

final class ListPaddedTests: XCTestCase {

    func testListPaddingLeft() {
        XCTAssertEqual(List<Int>([1, 2, 3]).paddedLeft(to: 5, with: 1), [1, 1, 1, 2, 3])
    }
    
    func testListPaddingLeftToShortedLength() {
        XCTAssertEqual(List<Int>([1, 2, 3]).paddedLeft(to: 1, with: 1), [1, 2, 3])
    }
    
    func testListPaddingRight() {
        XCTAssertEqual(List<Int>([1, 2, 3]).paddedRight(to: 5, with: 1), [1, 2, 3, 1, 1])
    }
    
    func testListPaddingRightToShortedLength() {
        XCTAssertEqual(List<Int>([1, 2, 3]).paddedRight(to: 1, with: 1), [1, 2, 3])
    }

    static var allTests = [
        ("testListPaddingLeft", testListPaddingLeft),
        ("testListPaddingRight", testListPaddingRight)
    ]
}
