import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => ResponsiveDashBoard()));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
