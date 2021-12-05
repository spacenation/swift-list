import Foundation

extension NonEmptyList {    
    public func append(_ other: List<Element>) -> NonEmptyList<Element> {
        .init(head: head, tail: tail + other)
    }
}

public func +<Element>(lhs: Element, rhs: NonEmptyList<Element>) -> NonEmptyList<Element> {
    .init(head: lhs, tail: .nonEmpty(rhs))
}
