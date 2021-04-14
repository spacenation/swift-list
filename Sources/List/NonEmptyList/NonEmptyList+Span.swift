import Foundation

public extension NonEmptyList {
    func span(_ predicate: (Element) -> Bool) -> (List<Element>, List<Element>) {
        switch predicate(head) {
        case true:
            let (matched, rest) = tail.span(predicate)
            return (.nonEmpty(.init(head, matched)), rest)
        case false:
            return (.empty, .nonEmpty(self))
        }
    }
}
