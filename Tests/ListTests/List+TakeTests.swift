import XCTest
import List

final class ListTakeTests: XCTestCase {

    func testListTakeShorter() {
        XCTAssertEqual(List<Int>([1, 2, 3]).take(2), [1, 2])
    }
    
    func testListTakeLonger() {
        XCTAssertEqual(List<Int>([1, 2, 3]).take(4), [1, 2, 3])
    }
    
    func testEmptyListTake() {
        XCTAssertEqual(List<Int>.empty.take(2), .empty)
    }

    static var allTests = [
        ("testListTakeShorter", testListTakeShorter),
        ("testListTakeLonger", testListTakeLonger),
        ("testEmptyListTake", testEmptyListTake)
    ]
}
