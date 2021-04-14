import Foundation

public extension NonEmptyList {
    func element(at index: Int) -> Element? {
        switch index {
        case 0:
            return head
        default:
            return tail.element(at: index - 1)
        }
    }
}
