main() {
  int i = 3;
  switch (i) {
    // case 不支持 fall through
    // 对比 JAVA SwitchFallThrough case 如果没有 break 则继续执行下面的 case 语句
    // case 1:
    //   print("case 1 or 2");
    case 2:
      print("case 1 or 2");
      break;
    //  所有 case 必须是相同类型 int/String
    //  不能一会儿是 int 一会儿是 String
    // case "1":
    //   break;
    default:
      print("case default");
      break;
  }
}
