import Foundation

extension NonEmptyList {
    public func append(_ other: NonEmptyList<Element>) -> NonEmptyList<Element> {
        .init(head: head, tail: tail)
    }
}

public func +<Element>(lhs: Element, rhs: NonEmptyList<Element>) -> NonEmptyList<Element> {
    .init(head: lhs, tail: .nonEmpty(rhs))
}
