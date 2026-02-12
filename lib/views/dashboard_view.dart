import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: Icon(Icons.menu),
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
