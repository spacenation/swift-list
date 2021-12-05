import Foundation

extension List {
    public func append(_ other: List<Element>) -> List<Element> {
        switch (self, other) {
        case (.empty, let other):
            return other
        case (.nonEmpty(let list), let other):
            return .nonEmpty(.init(head: list.head, tail: list.tail.append(other)))
        }
    }
    
    public func append(_ other: NonEmptyList<Element>) -> NonEmptyList<Element> {
        switch self {
        case .empty:
            return other
        case .nonEmpty(let list):
            return .init(head: list.head, tail: .nonEmpty(list.tail.append(other)))
        }
    }
    
    public func append(_ element: Element) -> NonEmptyList<Element> {
        switch self {
        case .empty:
            return .init(head: element)
        case .nonEmpty(let list):
            return .init(head: list.head, tail: .nonEmpty(list.tail.append(element)))
        }
    }
}

public func +<Element>(lhs: List<Element>, rhs: List<Element>) -> List<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: List<Element>, rhs: NonEmptyList<Element>) -> NonEmptyList<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: List<Element>, rhs: Element) -> NonEmptyList<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: Element, rhs: List<Element>) -> List<Element> {
    List<Element>.nonEmpty(.init(head: lhs, tail: rhs))
}
