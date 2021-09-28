import Foundation

public struct NonEmptyList<Element> {
    public let head: Element
    public let tail: List<Element>
    
    @inlinable public init(head: Element, tail: List<Element> = .empty) {
        self.head = head
        self.tail = tail
    }
}

extension NonEmptyList: Equatable where Element: Equatable {}
extension NonEmptyList: Hashable where Element: Hashable {}
