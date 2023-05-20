//
//file expenses.dart
//
import 'package:flutter/material.dart';
import 'package:practice_how_to_store_user_inputs/basic_data.dart';
import './expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  //
  //
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<BasicData> _registeredExpenses = [
    BasicData(
      title: 'Flower vase',
      amount: 68.55,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    BasicData(
      title: 'Mangoes',
      amount: 58.89,
      date: DateTime.now(),
      category: Category.food,
    ),
    BasicData(
      title: 'Kashmir travel',
      amount: 4498.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
    // BasicData(
    //   title: 'Kashmir travel',
    //   amount: 4498.00,
    //   date: DateTime.now(),
    //   category: Category.travel,
    // ),
    // BasicData(
    //   title: 'Kashmir travel',
    //   amount: 4498.00,
    //   date: DateTime.now(),
    //   category: Category.travel,
    // ),
    // BasicData(
    //   title: 'Kashmir travel',
    //   amount: 4498.00,
    //   date: DateTime.now(),
    //   category: Category.travel,
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Appbar'),
        ),
        body: Column(
          children: [
            const Text('The Chart'),
            Expanded(
              child: ExpensesList(
                basicdatas: _registeredExpenses,
              ),
            ),
          ],
        ));
  }
}
