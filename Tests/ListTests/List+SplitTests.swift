import XCTest
import List

final class ListSplitTests: XCTestCase {

    func testListSplitAt() {
        let splitResult = List<Int>([1, 2, 3, 4, 5]).split(at: 2)
        XCTAssertEqual(splitResult.0, [1, 2])
        XCTAssertEqual(splitResult.1, [3, 4, 5])
    }
    
    func testListSplitAtOutOfBounds() {
        let splitResult = List<Int>([1, 2, 3, 4, 5]).split(at: 6)
        XCTAssertEqual(splitResult.0, [1, 2, 3, 4, 5])
        XCTAssertEqual(splitResult.1, .empty)
    }
    
    func testListSplitEvery() {
        XCTAssertEqual(
            List<Int>([1, 2, 3, 4, 5, 6]).split(every: 2),
            [[1, 2], [3, 4], [5, 6]]
        )
    }
    
    func testListSplitEveryUneven() {
        XCTAssertEqual(
            List<Int>([1, 2, 3, 4, 5, 6]).split(every: 4),
            [[1, 2, 3, 4], [5, 6]]
        )
    }
    
    func testListSplitEveryOutOfBounds() {
        XCTAssertEqual(
            List<Int>([1, 2, 3]).split(every: 4),
            [[1, 2, 3]]
        )
    }

    static var allTests = [
        ("testListSplitAt", testListSplitAt),
        ("testListSplitAtOutOfBounds", testListSplitAtOutOfBounds),
        ("testListSplitEvery", testListSplitEvery),
        ("testListSplitEveryUneven", testListSplitEveryUneven),
        ("testListSplitEveryOutOfBounds", testListSplitEveryOutOfBounds),
    ]
}
