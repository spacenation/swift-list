import Foundation

public extension NonEmptyList {
    func filter(_ predicate: (Element) -> Bool) -> List<Element> {
        predicate(head) ? .nonEmpty(.init(head, tail.filter(predicate))) : tail.filter(predicate)
    }
}
