#!/usr/bin/dart

// chmod a+x SheBangWithArgs.dart
// ./SheBangWithArgs.dart a b c d e 1 2 3 4 5  直接运行
// 通过 args 参数取命令行传递进入的参数
main(List<String> args) {
  print("args type: " + args.runtimeType.toString());
  print("args length: " + args.length.toString());
  for (int i = 0; i < args.length; i++) {
    print("args #" + i.toString() + " is :" + args[i]);
  }
}
