import Foundation

public extension NonEmptyList {
    func map<B>(_ fn: (Element) -> B) -> NonEmptyList<B> {
        .init(head: fn(head), tail: tail.map(fn))
    }
}
