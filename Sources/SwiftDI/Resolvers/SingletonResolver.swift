class SingletonResolver<T>: Resolver<T> {
    private let _decoratedResolver: Resolver<T>

    init(decoratedResolver: Resolver<T>) {
        self._decoratedResolver = decoratedResolver
    }

    private var _value: T?

    override func resolve() -> T {
        if (self._value == nil) {
            self._value = _decoratedResolver.resolve()
        }
        return self._value!
    }
}