/**
 * Resolver - это абстракция, которая определяет,
 * как контейнер будет разрешать зависимость
 */
public class Resolver<T> {
    /**
     * Разрешает зависимость типа [T]
     * @return - возвращает объект типа [T]
     */
    func resolve() -> T {
        preconditionFailure("TODO: Need implement Resolver")
    }
}