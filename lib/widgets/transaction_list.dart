import 'package:flutter/material.dart';
import 'package:spending_tracker/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionListState extends StatefulWidget {
  const TransactionListState({super.key});

  @override
  State<TransactionListState> createState() => _TransactioListState();
}

class _TransactioListState extends State<TransactionListState> {
  final List<Transaction> userTransaction = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Grocery', amount: 12.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: userTransaction.map((tx) {
      return Card(
        child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            child: Text(
              '\$ ${tx.amount}',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                tx.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                DateFormat('yyyy/mm/dd').format(tx.date),
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          )
        ]),
      );
    }).toList());
  }
}
