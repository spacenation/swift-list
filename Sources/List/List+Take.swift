import Foundation

public extension List {
    func take(_ n: UInt) -> Self {
        switch self {
        case let .nonEmpty(list) where n > 0:
            return List(head: list.head, tail: list.tail.take(n - 1))
        default:
            return .empty
        }
    }
}
