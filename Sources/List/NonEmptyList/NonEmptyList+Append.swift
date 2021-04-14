import Foundation

extension NonEmptyList {
    public func append(_ other: NonEmptyList<Element>) -> NonEmptyList<Element> {
        .init(head, tail)
    }
}
