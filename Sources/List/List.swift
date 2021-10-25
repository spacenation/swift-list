import Foundation

public enum List<Element> {
    case empty
    indirect case nonEmpty(NonEmptyList<Element>)
}

public extension List {
    @inlinable init() {
        self = .empty
    }

    @inlinable init(head: Element, tail: List<Element> = .empty) {
        self = .nonEmpty(.init(head: head, tail: tail))
    }
    
    @inlinable init<S>(_ s: S) where Element == S.Element, S : Sequence {
        self = .empty
        
        for element in s {
            self = self.append(.nonEmpty(.init(head: element)))
        }
    }
    
    @inlinable init(repeating repeatedValue: Element, count: UInt) {
        switch count {
        case 0:
            self = .empty
        default:
            self = .nonEmpty(.init(head: repeatedValue, tail: .init(repeating: repeatedValue, count: count - 1)))
        }
    }
}

extension List: Equatable where Element: Equatable {}
extension List: Hashable where Element: Hashable {}
