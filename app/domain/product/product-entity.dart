class Product {
  int _id = 0;
  String _name = '';
  String _description = '';
  double _value = 0.0;

  Product({int id = 0, required String name, required double value, String description = ''}) {
    this._id = id;
    this._name = name;
    this._value = value;
    this._description = description;
  }

  int get id => _id;

  String get name => _name;

  void set name(String name) {
    print('teste');
    this._name = name;
  }

  String get description => _description;

  void set description(String description) {
    this._description = description;
  }

  double get value => _value;

  void set value(double value) {
    this._value = value;
  }
}
