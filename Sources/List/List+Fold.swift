import Foundation

public extension List {
    func reduce<Result>(_ initialResult: Result, _ fn: (Result, Element) throws -> Result) rethrows -> Result {
        try foldLeft(initialResult, fn)
    }
    func foldLeft<Result>(_ initialResult: Result, _ fn: (Result, Element) throws -> Result) rethrows -> Result {
        switch self {
        case .empty:
            return initialResult
        case let .nonEmpty(list):
            return try list.tail.foldLeft(fn(initialResult, list.head), fn)
        }
    }

    func foldRight<Result>(_ initialResult: Result, _ fn: (Element, Result) throws -> Result) rethrows -> Result {
        switch self {
        case .empty:
            return initialResult
        case let .nonEmpty(list):
            return try fn(list.head, list.tail.foldRight(initialResult, fn))
        }
    }
}
