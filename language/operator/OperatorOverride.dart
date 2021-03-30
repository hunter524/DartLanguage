class OperatorOverride {
  int num;

  OperatorOverride(this.num);

  OperatorOverride.name(this.num);

  operator +(OperatorOverride operatorOverride) {}

  // 二元的减法
  operator -(OperatorOverride operatorOverride) {}

  // 一元的取反操作
  operator -() {}


  operator *(OperatorOverride operatorOverride) {}

  operator /(OperatorOverride operatorOverride) {}

  operator %(OperatorOverride operatorOverride) {}

  // 一元运算符(取反)
  operator ~() {}

  // 返回一个整数值的除法
  operator ~/ (OperatorOverride operatorOverride) {}

  // xor
  operator ^(OperatorOverride operatorOverride) {}

  //or
  operator |(OperatorOverride operatorOverride) {}

  //and
  operator &(OperatorOverride operatorOverride) {}

  operator <(OperatorOverride operatorOverride) {}

  operator >(OperatorOverride operatorOverride) {}

  operator <=(OperatorOverride operatorOverride) {}

  operator >=(OperatorOverride operatorOverride) {}

  // == 运算符为什么不能被覆写
  // bool operator == (OperatorOverride operatorOverride) {}

  // 左移
  operator << (bits) {}

  // 右移 的位数
  operator >> (bits) {}

  // 索引
  operator [](index) {}
  // 索引 New Value
  operator []= (index,OperatorOverride operatorOverride) {}

}
