class ConstantClass {
  final varableA;
  final varableB;

  const ConstantClass(this.varableA, this.varableB);
}

main() {
  const constantObj = ConstantClass(1, 2);
  print("ConstClass ConstantObj:" + constantObj.runtimeType.toString());
  print("ConstanClass Field Type: " +
      constantObj.varableB.runtimeType.toString() +
      " | " +
      constantObj.varableA.runtimeType.toString());
  // const 变量和 final 变量一样不可以被重新进行赋值
  // constantObj = ConstantClass(3, 4);
}
