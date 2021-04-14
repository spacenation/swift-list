import Foundation

public func length<A>(_ list: NonEmptyList<A>) -> Int {
    1 + length(list.tail)
}
