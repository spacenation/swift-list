import Foundation

public extension List {
    func element(at index: Int) -> Element? {
        switch self {
        case .empty:
            return nil
        case let .nonEmpty(list):
            return list.element(at: index)
        }
    }
}
