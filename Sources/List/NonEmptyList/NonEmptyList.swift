import Foundation

public struct NonEmptyList<Element> {
    public let head: Element
    public let tail: List<Element>
}

public extension NonEmptyList {
    @inlinable init(_ head: Element, _ tail: List<Element> = .empty) {
        self.head = head
        self.tail = tail
    }
}

extension NonEmptyList: Equatable where Element: Equatable {}
