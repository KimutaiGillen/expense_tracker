import 'package:flutter/material.dart';
import '/widgets/new_transactions.dart';
import 'transaction_list.dart';

import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 120.25, time: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 100.25, time: DateTime.now()),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle  ,
        amount: txAmount,
        id: DateTime.now().toString(),
        time: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(
          newTx: _addTransaction,
        ),
        TransactionList(
          transaction: _userTransactions,
        )
      ],
    );
  }
}
