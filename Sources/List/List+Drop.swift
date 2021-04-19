import Foundation

public extension List {
    func drop(_ n: UInt) -> Self {
        switch self {
        case let list where n <= 0:
            return list
        case .empty:
            return .empty
        case let .nonEmpty(list):
            return list.tail.drop(n - 1)
        }
    }
}
