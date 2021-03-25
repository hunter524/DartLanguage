import 'FieldClass.dart';

main() {
  var fieldClazz = FieldClass(-1, "varField", "dynamicField", -1, -10);
  print(fieldClazz.varField);
  //_privateField 只能在  library fieldClass; 内部进行访问,在该处无法进行访问
  // fieldClazz._privateField;
}
