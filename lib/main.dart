import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // late String inputTitle;
  // late String inputAmount;

  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart Sections"),
              color: Colors.pink,
              elevation: 50,
            ),
          ),
          Card(
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
                          print(amountController.text);
                          print(titleController.text);
                        },
                        child: Text("Add Transaction"))
                  ],
                ),
              )),
          TransactionListState(),
        ],
      ),
    );
  }
}
