import Foundation

public extension NonEmptyList {
    func reduce<Result>(_ initialResult: Result, _ fn: (Result, Element) -> Result) -> Result {
        foldLeft(initialResult, fn)
    }
    
    func foldLeft<Result>(_ initialResult: Result, _ fn: (Result, Element) -> Result) -> Result {
        tail.foldLeft(fn(initialResult, head), fn)
    }

    func foldRight<Result>(_ initialResult: Result, _ fn: (Element, Result) -> Result) -> Result {
        fn(head, tail.foldRight(initialResult, fn))
    }
}
