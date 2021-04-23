import Foundation

public extension List {
    func split(at index: UInt) -> (Self, Self) {
        (self.take(index), self.drop(index))
    }
    
    func split(every n: UInt) -> List<List<Element>> {
        switch self {
        case .empty:
            return .empty
        case .nonEmpty:
            let (zs, bs) = self.split(at: n)
            return List<List<Element>>(head: zs, tail: bs.split(every: n))
        }
    }
}
