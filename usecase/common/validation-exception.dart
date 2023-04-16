class ValidationException implements Exception {
  final List<String> _errors;

  ValidationException(this._errors);

  List<String> get errors => this._errors;
}
