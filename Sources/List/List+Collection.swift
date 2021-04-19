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
    public var endIndex: Int { Int(self.length) }
}
