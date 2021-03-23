class OperatorOverride {
  int num;

  OperatorOverride(this.num);

  OperatorOverride.name(this.num);

  operator +(OperatorOverride operatorOverride) {}
}
