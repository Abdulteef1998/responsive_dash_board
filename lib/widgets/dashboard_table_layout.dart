import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DashBoardTableLayout extends StatelessWidget {
  const DashBoardTableLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
