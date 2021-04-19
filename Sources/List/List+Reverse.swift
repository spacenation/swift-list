import Foundation

public extension List {
    var reversed: Self {
        switch self {
        case .empty:
            return .empty
        case let .nonEmpty(list):
            return list.tail.reversed.append(List(list.head))
        }
    }
}
