import XCTest
import List

final class ListReduceTests: XCTestCase {

    func testListReduce() {
        XCTAssertEqual(List<Int>([1, 2, 3]).reduce(0, +), 6)
    }
    
    func testEmptyListReduce() {
        XCTAssertEqual(List<Int>.empty.reduce(0, +), 0)
    }
    
    func testListFoldLeft() {
        XCTAssertEqual(List<Int>([1, 2, 3]).foldLeft(0, -), -6)
    }
    
    func testListFoldRight() {
        XCTAssertEqual(List<Int>([1, 2, 3]).foldRight(0, -), 2)
    }
}
