import 'package:flutter/material.dart';
import 'package:flutter_bank/component/custom_form_field.dart';
import 'package:flutter_bank/model/transference.dart';

const _screenTitle = "New Transference";
const _accountNumberLabel = "Account Number";
const _accountNumberHint = "0000-0";
const _transferenceValueLabel = "Transference Value";
const _transferenceValueHint = "0.00";
const _confirmButtonText = "Confirm";

class TransferenceForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferenceFormState();
  }
}

class TransferenceFormState extends State<TransferenceForm> {
  final TextEditingController _accountNumberFieldController =
      TextEditingController();
  final TextEditingController _transferenceValueFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screenTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomFormField(
              controller: _accountNumberFieldController,
              label: _accountNumberLabel,
              hint: _accountNumberHint,
            ),
            CustomFormField(
              controller: _transferenceValueFieldController,
              label: _transferenceValueLabel,
              hint: _transferenceValueHint,
              textInputType: TextInputType.number,
              icon: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text(_confirmButtonText),
              onPressed: () {
                Navigator.pop(context, _createTransference());
              },
            )
          ],
        ),
      ),
    );
  }

  Transference _createTransference() {
    final String accountNumber = _accountNumberFieldController.text;
    final double transferenceValue =
        double.tryParse(_transferenceValueFieldController.text);

    Transference transference = null;

    if (accountNumber != null && transferenceValue != null) {
      transference = Transference(transferenceValue, accountNumber);
    }

    return transference;
  }
}
