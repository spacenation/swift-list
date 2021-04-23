import XCTest
@testable import List

final class ListTests: XCTestCase {
    func testListExpressibleByArrayLiteral() {
        let list: List<Int> = [1, 2, 3]
        XCTAssertEqual(list, [1, 2, 3])
    }
    
    func testListElementAtIndex() {
        XCTAssertEqual(List([1, 2, 3]).element(at: 0), 1)
        XCTAssertEqual(List([1, 2, 3]).element(at: 3), nil)
    }
    
    func testListContains() {
        XCTAssertTrue(List(head: 1).contains(1))
        XCTAssertFalse(List<Int>.empty.contains(1))
    }
    
    func testListRange() {
        let list = List(1...3)
        XCTAssertEqual(list.length, 3)
    }
    
    func testListRepeatingValue() {
        let list = List(repeating: 1, count: 3)
        XCTAssertEqual(list.length, 3)
    }

    static var allTests = [
        ("testListExpressibleByArrayLiteral", testListExpressibleByArrayLiteral),
        ("testListElementAtIndex", testListElementAtIndex),
        ("testListContains", testListContains),
        ("testListRange", testListRange)
    ]
}
