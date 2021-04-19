import Foundation

public enum List<Element> {
    case empty
    indirect case nonEmpty(NonEmptyList<Element>)
}

public extension List {
    @inlinable init() {
        self = .empty
    }
    
    @inlinable init(_ element: Element) {
        self = .nonEmpty(.init(element))
    }
    
    @inlinable init(_ head: Element, _ tail: List<Element> = .empty) {
        self = .nonEmpty(.init(head, tail))
    }
    
    @inlinable init<S>(_ s: S) where Element == S.Element, S : Sequence {
        self = .empty
        for element in s {
            self = self.append(.nonEmpty(.init(element)))
        }
    }
    
    @inlinable init(repeating repeatedValue: Element, count: UInt) {
        self = .empty
        for _ in (0..<count) {
            self = self.append(.nonEmpty(.init(repeatedValue)))
        }
    }
}

extension List: Equatable where Element: Equatable {}
