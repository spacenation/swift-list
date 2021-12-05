import Foundation

public extension NonEmptyList {
    func flatMap<B>(_ fn: @escaping (Element) -> NonEmptyList<B>) -> NonEmptyList<B> {
        fn(head).append(tail.flatMap({ .nonEmpty(fn($0)) }))
    }
}
