library Module;

// export 要在 part 之前声明

//hide 要 hide 的方法,其他模块内部的方法均暴露
// export "ModuleParent.dart" hide moduleParentHide;

// or show 只展示当前 show 方法,其他方法全部 hide

export 'ModuleParent.dart' show moduleParentShow;

part 'ModulePart1.dart';
part 'ModulePart2.dart';
