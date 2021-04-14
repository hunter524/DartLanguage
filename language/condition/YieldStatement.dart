main() {
  var nd = naturalsDwonFrom(3);
  print(nd);

  var ndop = naturalsDwonFromOptimise(3);
  print(ndop);

  var snd = simpleNaturalsTo(3);
  print(snd);
}

//OUT_PUT

// (3, 2, 1)
// (3, 2, 1)
// (0, 1, 2)

naturalsDwonFrom(n) sync* {
  if (n > 0) {
    yield n;
    for (var i in naturalsDwonFrom(n - 1)) {
      yield i;
    }
  }
}

naturalsDwonFromOptimise(n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDwonFromOptimise(n - 1);
  }
}

simpleNaturalsTo(n) sync* {
  var k = 0;
  while (k < n) {
    yield k++;
  }
}
