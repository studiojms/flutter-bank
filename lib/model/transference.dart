class Transference {
  final double _value;
  final String _accountNumber;

  Transference(this._value, this._accountNumber);

  String get accountNumber => _accountNumber;

  String get value => "R\$ ${_value.toStringAsFixed(2)}";

  @override
  String toString() {
    return 'Transference{_value: $_value, _accountNumber: $_accountNumber}';
  }
}
