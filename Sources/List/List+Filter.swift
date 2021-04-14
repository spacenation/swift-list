import Foundation

public extension List {
    func filter(_ predicate: (Element) -> Bool) -> Self {
        switch self {
        case .empty:
            return .empty
        case .nonEmpty(let list):
            return list.filter(predicate)
        }
    }
}
