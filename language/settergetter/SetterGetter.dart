class SetterGetter {
  dynamic field;

  get val => "";

  set val(newVal) {
    field = newVal;
  }

  get get => field;

  set set(newVal) {
    field = newVal;
  }
}
