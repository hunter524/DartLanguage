library fieldClass;

class FieldClass {
  static final num STATIC_FINAL_NUM = 1;
  static final STATIC_FINAL_NUM_2 = 1;
  static num STATIC_NUM = 0;

  num typeField;
  var varField;
  dynamic dynamicField;
  num _privateField;

  final num finalNum;

  FieldClass(this.typeField, this.varField, this.dynamicField,
      this._privateField, this.finalNum);
}
