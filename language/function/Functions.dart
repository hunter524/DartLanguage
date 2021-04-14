library functions;
import 'CallClass.dart';

// 位置参数
locationFunc(a, b, c) {
  print("locationFunc a: $a b: $b c: $c");
}

//可选参数
locationVarFunc(a, b, [c = 1]) {
  print("locationVarFunc a: $a b: $b c: $c");
}

// 命名参数
namedFunc({a, b, c}) {
  print("namedFunc a: $a b: $b c: $c");
}

// 报错! 一个方法不能同时拥有可选参数与命名参数
// allTypeFunc(a,b,c,[d=1]),{e,f,g}){
//
// }

dynamic funReturnFun() {
  return namedFunc;
}

main() {
  locationFunc(1, 2, 3);
  locationVarFunc(11, 22);
  locationVarFunc(111, 222, 333);

  namedFunc(a: 1111,b: 2222);
  namedFunc(a: 11111,b: 22222,c: 33333);

  funReturnFun()(a:1,b:2,c:3);

  // 使用 Function 的 apply 方法进行方法调用
  Function.apply(locationVarFunc, ["applyA","applyB","VarArgsC"]);

  // 构建了一个 CallClass 由于其实现了 call 方法,因此可以使用方法调用符号直接调用该对象
  // 普通函数的调用也会被翻译成为 call 方法的调用
  new CallClass()();

  print("function is a Object: ${locationVarFunc.toString()}");

}
