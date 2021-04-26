//# 符号调用对象 or 字面量

main() {
  var a = "a";
  print("#a ${#a}");
  var list = [1, 2, 3];
  print("#list ${#list}");

  var sheObj = SheClass();
  print("sheObj ${sheObj.she()}");
}

class SheClass {
  she() => #literal;
}
