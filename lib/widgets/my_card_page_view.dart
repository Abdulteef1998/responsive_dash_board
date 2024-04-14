import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pagecontroller});
  final PageController pagecontroller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pagecontroller,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => MyCard()));
  }
}
