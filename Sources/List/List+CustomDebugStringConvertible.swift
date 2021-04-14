import Foundation

extension List: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .empty:
            return "end"
        case .nonEmpty(let list):
            return "\(list.head) : \(list.tail)"
        }
    }
}
