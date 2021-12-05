import Foundation

public extension List {
    func reduce<Result>(_ initialResult: Result, _ fn: (Result, Element) -> Result) -> Result {
        foldLeft(initialResult, fn)
    }
    
    func foldLeft<Result>(_ initialResult: Result, _ fn: (Result, Element) -> Result) -> Result {
        switch self {
        case .empty:
            return initialResult
        case let .nonEmpty(list):
            return list.tail.foldLeft(fn(initialResult, list.head), fn)
        }
    }

    func foldRight<Result>(_ initialResult: Result, _ fn: (Element, Result) -> Result) -> Result {
        switch self {
        case .empty:
            return initialResult
        case let .nonEmpty(list):
            return fn(list.head, list.tail.foldRight(initialResult, fn))
        }
    }
}
