import Foundation

public extension NonEmptyList {
    var length: UInt {
        1 + self.tail.length
    }
}

