import Foundation

extension List {
    public func append(_ other: List<Element>) -> List<Element> {
        switch (self, other) {
        case (.empty, let other):
            return other
        case (let .nonEmpty(list), let other):
            return .nonEmpty(.init(list.head, list.tail.append(other)))
        }
    }
}
