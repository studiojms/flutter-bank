import 'package:flutter/material.dart';
import 'package:flutter_bank/model/transference.dart';

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  TransferenceItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(this._transference.value),
        subtitle: Text(this._transference.accountNumber),
      ),
    );
  }
}
