class FunctionOverLoaded {
  static int overLoaded(int x) {
    return x * 2;
  }

  static int overLoaded(int x, int y) {
    return x * 2;
  }
// static overLoaded(String x){
//   return x*2;
// }
}
