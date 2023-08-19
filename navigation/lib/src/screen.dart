abstract class Screen<ROUTE> {
  Screen<ROUTE> child(List<Screen<ROUTE>>? child);

  ROUTE build();
}