import Foundation

public extension List {
    var length: UInt {
        switch self {
        case .empty:
            return 0
        case let .nonEmpty(list):
            return list.length
        }
    }
}

