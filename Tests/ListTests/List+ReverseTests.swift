import XCTest
import List

final class ListReverseTests: XCTestCase {

    func testListReverse() {
        XCTAssertEqual(List<Int>([1, 2, 3]).reversed, [3, 2, 1])
    }
    
    func testEmptyListReverse() {
        XCTAssertEqual(List<Int>.empty.reversed, .empty)
    }
    
    func testPerformanceReverse() {

        let list = List(repeating: 1, count: 1000)
        
        measure {
            let reversedList = list.reversed
            print(reversedList.length)
        }
    }

    static var allTests = [
        ("testListReverse", testListReverse),
        ("testEmptyListReverse", testEmptyListReverse),
        ("testPerformanceReverse", testPerformanceReverse)
    ]
}
