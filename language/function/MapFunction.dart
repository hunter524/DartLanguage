class MapFunction implements Map<String, num> {
  Map<String, num> _map;

  MapFunction(this._map);

  num call(String key) {
    print("call map call as function");
    return _map[key];
  }

  @override
  num operator [](Object key) {
    return _map[key];
  }

  @override
  void operator []=(String key, num value) {
    _map[key] = value;
  }

  @override
  void addAll(Map<String, num> other) {}

  @override
  void addEntries(Iterable<MapEntry<String, num>> newEntries) {}

  @override
  Map<RK, RV> cast<RK, RV>() {}

  @override
  void clear() {}

  @override
  bool containsKey(Object key) {}

  @override
  bool containsValue(Object value) {
    // TODO: implement containsValue
  }

  @override
  // TODO: implement entries
  Iterable<MapEntry<String, num>> get entries => _map.entries;

  @override
  void forEach(void Function(String key, num value) action) {}

  @override
  bool get isEmpty => _map.isEmpty;

  @override
  // TODO: implement isNotEmpty
  bool get isNotEmpty => _map.isNotEmpty;

  @override
  // TODO: implement keys
  Iterable<String> get keys => _map.keys;

  @override
  // TODO: implement length
  int get length => _map.length;

  @override
  Map<K2, V2> map<K2, V2>(
      MapEntry<K2, V2> Function(String key, num value) convert) {}

  @override
  num putIfAbsent(String key, num Function() ifAbsent) {}

  @override
  num remove(Object key) {
    // TODO: implement remove
    _map.remove(key);
  }

  @override
  void removeWhere(bool Function(String key, num value) test) {
    _map.removeWhere(test);
  }

  @override
  num update(String key, num Function(num value) update,
      {num Function() ifAbsent}) {
    // TODO: implement update
    _map.update(key, update, ifAbsent: ifAbsent);
  }

  @override
  void updateAll(num Function(String key, num value) update) {
    _map.updateAll(update);
  }

  @override
  // TODO: implement values
  Iterable<num> get values => _map.values;
}

main() {
  var mapFunc = new MapFunction({"1": 2});
  print("mapFunc : ${mapFunc("1")}");
}
