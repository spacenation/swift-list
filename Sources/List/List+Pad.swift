import Foundation

public extension List {
    func paddedLeft(to length: UInt, with repeatingElement: Element) -> Self {
        switch length.subtractingReportingOverflow(self.length) {
        case let x where x.overflow:
            return self
        case let x where x.partialValue == 0:
            return self
        case let x:
            return List(repeating: repeatingElement, count: x.partialValue).append(self)
        }
    }
    
    func paddedRight(to length: UInt, with repeatingElement: Element) -> Self {
        switch length.subtractingReportingOverflow(self.length) {
        case let x where x.overflow:
            return self
        case let x where x.partialValue == 0:
            return self
        case let x:
            return self.append(List(repeating: repeatingElement, count: x.partialValue))
        }
    }
}
