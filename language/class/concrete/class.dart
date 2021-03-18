library ClassAll;

class AllElementInClass {
  static var staticVariable = "static variable";
  static final staticFinal = "static Final == val";

  static staticMethod() {
    return "concat static var:" + staticVariable + staticFinal;
  }

  num x;
  num y;
  var z;

  // final 字段一旦赋值便不可以更改 == val
  final finalField;

  AllElementInClass(this.z, this.finalField);

  AllElementInClass.SecConstructor(a, b, c, this.finalField) {
    this.x = a;
    this.y = b;
    this.z = c;
  }

  fun() {
    print("call all elements fun");
  }

  String funWithReturnType() {
    // wrong return type
    // return 1;

    //right return type
    return "right type";
  }

  // setter 方法调用则等同于属性的赋值操作
  set setterMethod(v) {
    this.x = v;
  }

  // getter 方法调用不需要 使用方法调用符 ()/写法等同于属性引用则可以直接调用
  get getterMethod => this.x;

  @override
  dynamic noSuchMethod(Invocation invocation) {
    print("override noSuchMethod: member name: " +
        invocation.memberName.toString());
  }

  /**
   * TODO://这个工厂方法和普通构造方法,命名方法有什么不同?
   */
  factory AllElementInClass.fac(x) {
    return AllElementInClass.SecConstructor(111, 222, 333, 444);
  }
}
