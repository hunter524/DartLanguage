class ClassConstructor {
  int num;
  int sum;

  // ClassConstructor(this.num);

  ClassConstructor.NamedConstructor(this.num);

  // argument 构造函数
  ClassConstructor({
    this.num,
    this.sum,
  });

  // TODO://这个工厂方法和静态方法的工厂方法有什么不同?
  factory ClassConstructor.FactoryConstructor(key) {
    return ClassConstructor.NamedConstructor(4);
  }
}
