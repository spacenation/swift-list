import Foundation

public extension NonEmptyList {
    func map<B>(_ fn: (Element) -> B) -> NonEmptyList<B> {
        .init(fn(head), tail.map(fn))
    }
}
