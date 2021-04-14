import Foundation

extension List: Sequence {
    public struct Iterator: IteratorProtocol {
        private let list: List<Element>
        private var index: Int = 0
        
        public init(list: List<Element>) {
            self.list = list
        }
        
        public mutating func next() -> Element? {
            defer { index += 1 }
            return list.element(at: index)
        }
    }
    
    public func makeIterator() -> Iterator {
        Iterator(list: self)
    }
}
