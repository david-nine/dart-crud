class Address {
  int _id = 0;
  String _publicPlace = '';
  int _number = 0;
  String _complement = '';
  String _neighborhood = '';
  String _city = '';
  String _cep = '';

  Address({
      required int number, 
      required String publicPlace, 
      required String neighborhood, 
      required String city, 
      required String cep,
      String complement = ''
    }) {
    this._number = number;
    this._publicPlace = publicPlace;
    this._complement = complement;
    this._neighborhood = neighborhood;
    this._city = city;
    this._cep = cep;
  }

  int get number => _number;

  void set number(int number) {
    this._number = number;
  }

  String get publicPlace => _publicPlace;

  void set publicPlace(String publicPlace) {
    this._publicPlace = publicPlace;
  }

  String get complement => _complement;

  void set complement(String complement) {
    this._complement = complement;
  }

  String get neighborhood => _neighborhood;

  void set neighborhood(String neighborhood) {
    this._neighborhood = neighborhood;
  }

  String get city => _city;

  void set city(String city) {
    this._city = city;
  }

  String get cep => _cep;

  void set cep(String cep) {
    this._cep = cep;
  }
}
