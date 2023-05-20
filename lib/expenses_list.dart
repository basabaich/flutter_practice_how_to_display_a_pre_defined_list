//
//file: expenses_list.dart
//
import 'package:flutter/material.dart';
import './basic_data.dart';
import './expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.basicdatas});
  final List<BasicData> basicdatas;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: basicdatas.length,
      itemBuilder: (ctx, index) => ExpenseItem(
        basicdatas[index],
      ),
    );
  }
}
