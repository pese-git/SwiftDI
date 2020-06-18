/**
 * Разрешает зависимость для значения
 */
class ValueResolver<T>: Resolver<T> {
    private let _value: T

    init(value: T) {
        self._value = value
    }

    override func resolve() -> T {
        return _value
    }
}