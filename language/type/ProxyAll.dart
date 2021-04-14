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
}

// TODO:// 基于反射的通用代理,因为类型转换报错
main() {
  // OriginClass proxy = Proxy(OriginClass(10, 2)) ;
  // print("proxy sub: ${proxy.sub()}");
}
