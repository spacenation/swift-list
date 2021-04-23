import Foundation

public extension List {
    var reversed: Self {
        reversePrime(self, .empty)
    }
}

private func reversePrime<Element>(_ list1: List<Element>, _ list2: List<Element>) -> List<Element> {
    switch (list1, list2) {
    case (.empty, let ys):
        return ys
    case (let .nonEmpty(list), let ys):
        return reversePrime(list.tail, .init(head: list.head, tail: ys))
    }
}
