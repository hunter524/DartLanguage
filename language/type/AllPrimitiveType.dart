main() {
  print("String Type:" + "str".runtimeType.toString());
  // 数字类型只有 Int Double
  // java Integer 可以表示 -2147483648 至 2147483647 (32bit 一个符号位)
  // dart int 可以表示 -9223372036854775808 至 9223372036854775807 (64 bit 一个符号位)
  // dart 中大于 64 bit 的 Int 数值使用 BitInt 表示

  // Object#runtimeType 命名为 运行时类型是因为 dart 可以声明变量类型为 dynamic 动态类型
  print("Int Type:" + 1.runtimeType.toString());
  print("Double Type:" + 3.1415926.runtimeType.toString());

  BigInt bigInt = BigInt.parse(
      "999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999");
  print("bigInt Type:" +
      bigInt.runtimeType.toString() +
      "bit Count: " +
      bigInt.bitLength.toString());

  // 动态类型变量声明可以重复指向任意类型的对象,使其在运行时具有不同的真实类型

  dynamic dynamicVar = 1;
  print("dynamicVar Type: " + dynamicVar.runtimeType.toString());

  dynamicVar = "str";
  print("dynamicVar Type: " + dynamicVar.runtimeType.toString());
}
