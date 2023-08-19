abstract class Screen<T> {
  Screen<T> child(List<Screen<T>>? child);

  T build();
}