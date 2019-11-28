class ItemStore {
  static final Map<dynamic, dynamic> _item = <dynamic, dynamic>{};
  static final ItemStore _cache = ItemStore._internal();
  
  factory ItemStore() {
    return _cache;
  }
  
  ItemStore._internal();

  set(dynamic key, dynamic value) => _item[key] = value;
  get(dynamic key) => _item[key];
}