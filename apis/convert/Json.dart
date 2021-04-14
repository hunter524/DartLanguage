import 'dart:convert';

main() {
  var obj = jsonDecode("{\"key\":\"k\"}");
  print("obj runtimeType: ${obj.runtimeType}");
}
