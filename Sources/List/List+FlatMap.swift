import Foundation

extension List {
    public func flatMap<A>(_ f: @escaping (Element) -> List<A>) -> List<A> {
        switch self {
        case .empty:
            return List<A>.empty
        case .nonEmpty(let list):
            return f(list.head).append(list.tail.flatMap(f))
        }
    }
}
