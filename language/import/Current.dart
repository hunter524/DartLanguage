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
