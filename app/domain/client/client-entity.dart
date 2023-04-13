import '../address/address-entity.dart';

class Client {
  int _id = 0;
  String _name = '';
  String _cpf = '';
  Address? _address;

  Client({int id = 0, required String name, required String cpf, required Address address}) {
    this._id = id;
    this._name = name;
    this._cpf = cpf;
    this.address = address;
  }

  int get id => _id;

  String get name => _name;

  void set name(String name) {
    this._name = name;
  }

  String get cpf => _cpf;

  void set cpf(String cpf) {
    this._cpf = cpf;
  }

  Address? get address => _address;

  void set address(Address? address) {
    this._address = address;
  }
}
