import XCTest
import List

final class NonEmptyListFlatMapTests: XCTestCase {

    func testEmptyListFlatMap() {
        XCTAssertEqual(
            NonEmptyList(head: 1, tail: [3, 5]).flatMap({ NonEmptyList(head: $0, tail: [$0 + 1]) }),
            NonEmptyList(head: 1, tail: [2, 3, 4, 5, 6])
        )
    }
}
