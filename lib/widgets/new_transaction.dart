import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //NewTransaction(void Function(String txTitle, double txAmount) addTx);
  final Function addTx;
  NewTransaction(this.addTx);
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                // onChanged: (val) => inputTitle = val,
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                //onChanged: (val) => inputAmount = val
                controller: amountController,
              ),
              TextButton(
                  onPressed: () {
                    addTx(titleController.text,
                        double.parse(amountController.text));
                  },
                  child: Text("Add Transaction"))
            ],
          ),
        ));
  }
}

void addTx(String text, double parse) {}
