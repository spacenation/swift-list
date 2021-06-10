import Foundation

extension List {
    public func apply<A>(_ f: List<(Element) -> A>) -> List<A> {
        switch (f, self) {
        case (.nonEmpty(let f), .nonEmpty(let list)):
            return .nonEmpty(list.apply(f))
        default:
            return .empty
        }
    }
    
    public func liftA2<B, C>(f: (Element) -> (B) -> C, _ fb: List<B>) -> List<C> {
        fb.apply(map(f))
    }
}
