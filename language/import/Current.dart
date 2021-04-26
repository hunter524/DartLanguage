library current;

import "Deferred.dart" deferred as Deferred;

main(){
  // throw Deferred library Deferred was not loaded.
  // Deferred.doSomeThing();
  Deferred.loadLibrary().then(onValue,onError: onError);
}

onValue(isSuccess){
  print("onValue");
  print(isSuccess);
  //TODO:为什么　isSuccess 是　null
  //但是在 onValue 上调用延迟初始化的方法确实是可以被调用的
  Deferred.doSomeThing();
  // isSuccess?callDeferred():loadDeferredFail();
}
onError(error){
  print("onErr");
  print(error);
}

callDeferred(){
  Deferred.doSomeThing();
  return"";
}

loadDeferredFail(){
  print("load Deferred Fail!");
  return"";
}
