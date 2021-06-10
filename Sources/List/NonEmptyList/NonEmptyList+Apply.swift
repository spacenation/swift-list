import Foundation

extension NonEmptyList {
    public func apply<A>(_ f: NonEmptyList<(Element) -> A>) -> NonEmptyList<A> {
        NonEmptyList<A>(head: f.head(self.head), tail: self.tail.apply(f.tail))
    }
    
    public func liftA2<B, C>(f: (Element) -> (B) -> C, _ fb: NonEmptyList<B>) -> NonEmptyList<C> {
        fb.apply(map(f))
    }
}
