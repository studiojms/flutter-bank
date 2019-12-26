import 'package:flutter/material.dart';
import 'package:flutter_bank/model/transference.dart';
import 'package:flutter_bank/screen/transference_form.dart';
import 'package:flutter_bank/screen/transference_item.dart';

const _screenTitle = "Transferences";


class TransferenceList extends StatefulWidget {
  final List<Transference> _transferences = List();

  @override
  State<StatefulWidget> createState() {
    return TransferenceListState();
  }
}

class TransferenceListState extends State<TransferenceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_screenTitle)),
        body: ListView.builder(
          itemCount: widget._transferences.length,
          itemBuilder: (BuildContext context, int idx) {
            return TransferenceItem(widget._transferences[idx]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final Future<Transference> future = Navigator.push(context,
                MaterialPageRoute(builder: (context) => TransferenceForm()));

            future.then((receivedTransfer) {
              if (receivedTransfer != null) {
                setState(() {
                  widget._transferences.add(receivedTransfer);
                });
              }
            });
          },
          child: Icon(Icons.add),
        ));
  }
}
