import Foundation

public extension NonEmptyList {
    var reversed: Self {
        reversePrime(head, tail, .empty)
    }
}

private func reversePrime<Element>(_ head: Element, _ tail: List<Element>, _ accumulator: List<Element>) -> NonEmptyList<Element> {
    switch tail {
    case .empty:
        return NonEmptyList(head: head, tail: accumulator)
    case .nonEmpty(let list):
        return reversePrime(list.head, list.tail, .init(head: head, tail: accumulator))
    }
}
