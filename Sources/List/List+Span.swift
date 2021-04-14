import Foundation

public extension List {
    func span(_ predicate: (Element) -> Bool) -> (Self, Self) {
        switch self {
        case .empty:
            return (.empty, .empty)
        case let .nonEmpty(list):
            return list.span(predicate)
        }
    }
}
