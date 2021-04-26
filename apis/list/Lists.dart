main() {
  var listString = ["a", "b", "c", "c"];
  listString.fold("init", (previousValue, element) => previousValue + element);
}
