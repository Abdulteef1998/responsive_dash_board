import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr 2024',
      amount: r'$30,129',
      isWithdraw: true,
    ),
    TransctionModel(
      title: 'Landing Page Project',
      date: '13 aug 2024',
      amount: r'$20,129',
      isWithdraw: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr 2024',
      amount: r'$30,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransctionItem(transctionModel: items[index]);
      },
    );
  }
}
