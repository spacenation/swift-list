import Foundation

extension List: Collection {
    public typealias Element = Element
    
    public subscript(position: Int) -> Element {
        element(at: position)!
    }
    
    public func index(after i: Int) -> Int {
        i + 1
    }
    
    public var startIndex: Int { 0 }
    public var endIndex: Int { length(self) }
}

public func length<A>(_ list: List<A>) -> Int {
    switch list {
    case .empty:
        return 0
    case let .nonEmpty(list):
        return length(list)
    }
}
