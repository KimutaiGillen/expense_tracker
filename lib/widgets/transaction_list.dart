import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
    required this.transaction,
  });

  final List<Transaction> transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transaction.map((tx) {
          return Card(
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '\$ ${tx.amount}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.purple),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.time),
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}
