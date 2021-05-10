import 'dart:mirrors';

// dart 如何实现对于一个通用的类型的代理
//可以基于 ObjectMirror#delegate 反射 API 实现一个通用的代理
//@proxy 注解在 dart2 中将被移除,其是 dart1 的产物

@proxy
class Proxy {
  InstanceMirror im;

  get forwardee => this.im.reflectee;

  Proxy(f) {
    im = reflect(f);
  }

  @override
  noSuchMethod(Invocation invocation) {
    //代理类内部记录每次调用的方法名称
    print("call : ${invocation.memberName}");
    return im.delegate(invocation);
  }
}

class OriginClass {
  int x, y;

  OriginClass(this.x, this.y);

  sub() {
    return x - y;
  }

  plus() {
    return x + y;
  }

  mul() {
    return x + y;
  }

  div() {
    return x + y;
  }

  prefix(String prefix) {
    return "$prefix $x $y";
  }

  //TODO:// Dart #List 是什么语法?
  // 返回的是 List 的一种 Symbol 表示方式
  //TODO:// Dart 的 Symbol 是否参照了 JS 中的 Symbol
  get get => #List;
}

main() {
  // 基于反射的通用代理,无法赋值为具体的类型
  //　只能通过　dynamic 动态类型引用
  dynamic proxy = Proxy(OriginClass(10, 2));
  print("proxy sub: ${proxy.sub()}");

  var origin = OriginClass(10, 2);
  print("origin.get Type: ${origin.get.runtimeType} value: ${origin.get}");
}
