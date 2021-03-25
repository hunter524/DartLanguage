class AccessorClass {
  num a;
  num b;

  AccessorClass(this.a, this.b);

  get sum => a + b;

  get mul => a * b;

  get sub => a - b;

  get div => a / b;
}

main() {
  var accessor = AccessorClass(4, 6);
  print("sum: " + accessor.sum.toString());
  print("mul: " + accessor.mul.toString());
  print("sub: " + accessor.sub.toString());
  print("div: " + accessor.div.toString());
}
