import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key? key, required this.currentPageIndex})
      : super(key: key);
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      children: [
        ...List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child:
                      CustomDotIndicator(isActive: index == currentPageIndex),
                )),
      ],
    );
  }
}
