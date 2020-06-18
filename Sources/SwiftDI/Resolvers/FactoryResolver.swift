/**
 * Разрешает зависимость для фабричной функции
 */
class FactoryResolver<T>: Resolver<T> {
    private let _factory: () -> T

    init(factory: @escaping () -> T) {
      self._factory = factory
    }

    override func resolve() -> T {
        return _factory()
    }
}