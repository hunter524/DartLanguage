class SelfDefineRuntimeType {}

//
typedef int IntFunction(int);

main() {
  // String 类型的类型 是　Type (内置类型类似于　JS 类型的字符串表达形式)
  print("String Type RuntimeType: ${"String".runtimeType.runtimeType}");
  print("String RuntimeType:${"string".runtimeType}");

  print("Num Type RuntimeType:${1.runtimeType.runtimeType}");
  print("Num RuntimeType:${1.runtimeType}");

  var selfRuntimeType = new SelfDefineRuntimeType();

  print("selfRuntimeType: ${selfRuntimeType.runtimeType}");

  print("intFunction: ${IntFunction.runtimeType}");
}
