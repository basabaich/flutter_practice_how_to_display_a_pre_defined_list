//file: expense_item.dart
//This file will organise how all data in the basic_data.dart file will be
//organised inside a Card.

import 'package:flutter/material.dart';
import './basic_data.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.basicData, {super.key});

  final BasicData basicData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Title :-            '),
                Text(basicData.title),
              ],
            ),
            Row(
              children: [
                const Text('Amount:-      '),
                Text(basicData.amount.toStringAsFixed(2)),
              ],
            ),
            Row(
              children: [
                const Text('Date:-            '),
                Text(basicData.formattedDate),
              ],
            ),
            Row(
              children: [
                const Text('Category:-    '),
                Icon(categoryIcons[basicData.category]),
                const SizedBox(width: 60),
                Text(basicData.category.toString()),
              ],
            ),
            Row(
              children: [
                const Text('ID:-       '),
                Text(basicData.id),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
