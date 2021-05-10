import 'dart:mirrors';

class MirrorModelClass {
  String stringField;

  func() {}

  call() {
    print("function Like Class");
  }
}

topFunc() {}

main() {
  // 通过 reflectClass 可以获取 ClassMirror
  var classMirror = reflectClass(MirrorModelClass);
  print(classMirror.toString());
  var declarations = classMirror.declarations;

  // ClassMirror#declarations 返回的是当前 Class 中声明的 字段/方法的 Map
  // k 为 Symbol 表示该字段/方法的Symbol 引用 v 为实际的类型

  // DeclarationMirror 的子类
  // LibraryMirror
  // MethodMirror
  // TypeMirror
  // VariableMirror

  // TypeMirror 的子类(表示一种类型的声明)
  // ClassMirror (表示类的反射)
  // FunctionTypeMirror
  // TypeVariableMirror(表示泛型类型的反射)
  // TypedefMirror (typedef 类型的反射)

  // ObjectMirror 的子类(像对象的一种中间类型抽象)
  // ClassMirror
  // ClosureMirror
  // FunctionTypeMirror
  // InstanceMirror
  // LibraryMirror
  // ObjectMirror

  // InstanceMirror 的子类
  // ClosureMirror

  // ClassMirror 的子类
  // FunctionTypeMirror

  // VariableMirror 的子类
  // ParameterMirror (表示参数的反射)
  // 通过 MethodMirror#parameters,FunctionTypeMirror#parameters 可以获取

  print("=============declarations==============");
  for (var value in declarations.entries) {
    print("k:" +
        value.key.toString() +
        "\nv:" +
        value.value.runtimeType.toString());
  }

  // 通过 reflect 可以获取
  // InstanceMirror (类型实例的反射)
  // ClosureMirror (类型实例中的方法的反射)
  print("==================Instance==================");
  var instance = new MirrorModelClass();

  // 因为 MirrorModelClass 存在 call 方法因此可以直接对对象采取方法调用的模式进行方法调用
  instance();

  var instanceMirror = reflect(instance);
  print(instanceMirror.toString());

  // instanceMirror#reflectee 表示 instance 自己
  // !!!! 通过 InstanceMirror 可以找到被其表示的实例 !!!!
  print("instanceMirror.reflectee == instance :" +
      (instanceMirror.reflectee == instance).toString());

  var funcMirror = reflect(instance.func);
  print(funcMirror.toString());

  var topFuncMirror = reflect(topFunc);
  print("topFuncMirror:" + topFuncMirror.toString());
}
