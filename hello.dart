import 'dart:io';
import 'dart:math';

import 'language/class/concrete/class.dart';
import 'model/PPoint.dart';

// 通过 dart hello.dart a b c 可以执行该脚本,同时传入执行参数 a b c,作为 main 方法的 args 参数列表传递给main 方法
// dart 脚本的运行如同其他 java node 运行的参数传递相同

// dart compile <subcommand> files >>>>>编译工具,可以将 dart 编译成为:
// aot-snapshot   Compile Dart to an AOT snapshot.
// exe            Compile Dart to a self-contained executable.
// jit-snapshot   Compile Dart to a JIT snapshot.
// js             Compile Dart to JavaScript.
// kernel         Compile Dart to a kernel snapshot.

void main(args) {
  print("args length:" + args.length.toString());
  if (args.length >= 3) {
    print("args a: ${args[0]} b: ${args[1]} c: ${args[2]}");
  }

  var now = DateTime.now();
  print('Hello, World!' + now.toString());
  // 读取到 break 跳过打印
  // while (true) {
  //   var line = stdin.readLineSync();
  //   if ("break" == line) {
  //     break;
  //   }
  //   print(line);
  print(sqrt(9));
  var pp = PPoint(1, 2);
  print("pp x: " + pp.x.toString() + " y: " + pp.y.toString());
  final val = "aaa";
  print(val);

  var allElement = AllElementInClass.SecConstructor(1, 2, 3, 4);
  print(allElement.getterMethod);
  allElement.setterMethod = 100;
  print(allElement.getterMethod);
  allElement.fun();

  // final field 赋值报错
  // allElement.finalField = 3;

  // 非 final field 可以直接赋值
  // 该处的赋值实际上是调用该字段背后自动生成的 setter 方法
  allElement.x = 1000;
  print(allElement.getterMethod);

  var xAllElement = AllElementInClass.fac("x");
  print("x all Element HashCode:" + xAllElement.hashCode.toString());

  xAllElement = AllElementInClass.fac("x");
  print("x all Element HashCode:" + xAllElement.hashCode.toString());

  var yAllElement = AllElementInClass.fac("y");
  print("x all Element HashCode:" + yAllElement.hashCode.toString());

  // noSuchMethod
  print("============ noSuchMethod ===============");
  dynamic any = AllElementInClass.SecConstructor(0, 0, 0, 0);
  any.fun();
  any.noFun();

  print("object str type : " +
      "object".runtimeType.toString() +
      "\nany runtime type : " +
      any.runtimeType.toString());
  print("any toString:" + any.toString());

  print(AllElementInClass.staticMethod());
  // 静态调用一个不存在的方法还是被编译器检测出来
  // AllElementInClass.noFun();
  //使用 Dart 运行一个命令行参数
  // Process.run("ls",["-l"]).then((value) => {
  //   print(value.stdout.toString())
  // });

//  Type fuck
//   Type.runTimeType();//why not ?
  var TypeRuntimeType = (Type).runtimeType; //Why can?
  print("(Type).runtimeType: " + TypeRuntimeType.toString());
}
