library points;

class PPoint {
  num x;
  num y;

  PPoint(this.x, this.y);

  getter() {
    return x * y;
  }
}

class CPPoint extends PPoint {
  CPPoint(x, y) : super(x, y);
//继承父类但是不能重写 x() 方法,该方法是 var x 隐含生成的 getter 方法
//不能覆写父类的 getter 方法
// x()=>2;
// 不能覆写 父类的普通方法为 getter 方法
// get getter=>2;

}
