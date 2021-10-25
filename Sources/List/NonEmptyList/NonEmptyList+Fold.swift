import Foundation

public extension NonEmptyList {
    func reduce<Result>(_ initialResult: Result, _ fn: (Result, Element) throws -> Result) rethrows -> Result {
        try foldLeft(initialResult, fn)
    }
    
    func foldLeft<Result>(_ initialResult: Result, _ fn: (Result, Element) throws -> Result) rethrows -> Result {
        try tail.foldLeft(fn(initialResult, head), fn)
    }

    func foldRight<Result>(_ initialResult: Result, _ fn: (Element, Result) throws -> Result) rethrows -> Result {
        try fn(head, tail.foldRight(initialResult, fn))
    }
}
