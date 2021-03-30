import 'Module.dart' as Module;

//part 模块分文件
//as 导入模块区分命名空间
main(){
  Module.mp1();
  Module.mp2();
  //hide 放法被隐藏 (或者只 show 该展示的方法)
  Module.moduleParentShow();
}
