import Foundation

extension List {
    public func append(_ other: List<Element>) -> List<Element> {
        switch (self, other) {
        case (.empty, let other):
            return other
        case (let .nonEmpty(list), let other):
            return .nonEmpty(.init(head: list.head, tail: list.tail.append(other)))
        }
    }
}

public func +<Element>(lhs: List<Element>, rhs: List<Element>) -> List<Element> {
    lhs.append(rhs)
}

public func +<Element>(lhs: Element, rhs: List<Element>) -> List<Element> {
    List<Element>.nonEmpty(.init(head: lhs, tail: rhs))
}

public func +<Element>(lhs: List<Element>, rhs: Element) -> List<Element> {
    lhs + .nonEmpty(.init(head: rhs))
}
