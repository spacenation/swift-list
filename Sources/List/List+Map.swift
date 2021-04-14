import Foundation

public extension List {
    func map<B>(_ fn: (Element) -> B) -> List<B> {
        switch self {
        case .empty:
            return .empty
        case .nonEmpty(let list):
            return .nonEmpty(list.map(fn))
        }
    }
}
