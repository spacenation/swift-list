import Foundation

public extension List {
    func reduce<Result>(_ initialResult: Result, _ fn: (Result, Element) throws -> Result) rethrows -> Result {
        switch self {
        case .empty:
            return initialResult
        case let .nonEmpty(list):
            return try list.tail.reduce(fn(initialResult, list.head), fn)
        }
    }
}
