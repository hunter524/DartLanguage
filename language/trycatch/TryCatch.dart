import 'dart:io';

main() {
  // throwFun();
  // throwExpression();
  // tryMultiCatch();
  tryStack();
}

throwFun() {
  throw "throw fun statement";
}

// 只有 throw 是表达式才可以写出这个写法
throwExpression() => throw "throw expression";

tryMultiCatch() {
  for (int i = 0; i < 10; i++) {
    var reminder = i % 3;
    try {
      if (reminder == 0) {
        throw "reminder is 0!";
      } else if (reminder == 1) {
        throw 1;
      } else {
        throw 2.0;
      }
    } on String catch (str) {
      print("catch string type err: $str");
    } catch (others) {
      print("catch others err: $others");
    }
  }
}

tryStack() {
  tryCatchWithStack();
}

tryCatchWithStack() {
  try {
    throw "stack";
  } catch (e, s) {
    //类型为内置类型 _StackTrace
    print("type of s ${s.runtimeType}");
    print("s#toString: ${s.toString()}");
  }
}
