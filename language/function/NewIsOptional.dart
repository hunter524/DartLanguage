class NewIsOptional {
  num variable;

  NewIsOptional(this.variable);
}

main() {
  // 下述三种模式均可以声明变量名称
  // var newIsOptional = NewIsOptional(555);
  // dynamic newIsOptional = NewIsOptional(555);
  NewIsOptional newIsOptional = NewIsOptional(555);

  print("NewIsOptional: ${newIsOptional.variable}");
}
