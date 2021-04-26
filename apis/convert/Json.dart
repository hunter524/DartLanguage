import 'dart:convert';

main() {
  var obj = jsonDecode("{\"key\":\"k\"}");
  print("obj runtimeType: ${obj.runtimeType}");
  // obj 只能通过下标的方式进行访问,无法通过 obj.key 的方式进行访问
  print("obj.key ${obj["key"]}");
}
