import Foundation

extension NonEmptyList {    
    public func append(_ other: List<Element>) -> NonEmptyList<Element> {
        .init(head: head, tail: tail + other)
    }
    
    public func append(_ other: NonEmptyList<Element>) -> NonEmptyList<Element> {
        .init(head: head, tail: .nonEmpty(tail.append(other)))
    }
    
    public func append(_ element: Element) -> NonEmptyList<Element> {
        .init(head: head, tail: .nonEmpty(tail.append(element)))
    }
}

public func +<Element>(lhs: NonEmptyList<Element>, rhs: NonEmptyList<Element>) -> NonEmptyList<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: NonEmptyList<Element>, rhs: List<Element>) -> NonEmptyList<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: NonEmptyList<Element>, rhs: Element) -> NonEmptyList<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: Element, rhs: NonEmptyList<Element>) -> NonEmptyList<Element> {
    .init(head: lhs, tail: .nonEmpty(rhs))
}
