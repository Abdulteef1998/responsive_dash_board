import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_confg.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_table_layout.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

import '../widgets/adaptive_layout.dart';
import '../widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfg.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu)),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfg.tablet
          ? CustomDrawer()
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => DashBoardMobileLayout(),
          tabletLayout: (context) => DashBoardTableLayout(),
          desktopLayout: (context) => DashBoardDesktopLayout()),
    );
  }
}
