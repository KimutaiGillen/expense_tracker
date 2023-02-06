// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  Function newTx;
  NewTransactions({super.key, required this.newTx});

  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Title',
          ),
          controller: titleInputController,
        ),
        TextField(
          decoration: const InputDecoration(
            labelText: 'Amount',
          ),
          controller: amountInputController,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              newTx(titleInputController.text,
                  double.parse(amountInputController.text));
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.purple),
            ),
            child: const Text("add transaction"))
      ],
    );
  }
}
