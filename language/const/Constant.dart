const str = "str";
const list = <String>['1', '2', '3'];
const map = <String, int>{'k1': 1, 'k2': 2};

main() {
  // 编译时不报错,运行时报错. 常量不能被更改
  // Unhandled exception:
  // Unsupported operation: Cannot set value in unmodifiable Map
  // #0      _ImmutableMap.[]= (dart:core-patch/immutable_map.dart:74:5)
  // #1      main (file:///home/hunter/WebstormProjects/DartLanguage/language/const/Constant.dart:6:6)
  // #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:283:19)
  // #3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
  // map['k3'] = 3;
  // list.add("4");
  // 常量变量重新赋值则直接报错
  // str = "str2";
  print(map.toString());
}
