import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 15),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: DashBoardMobileLayout(),
            ))
      ],
    );
  }
}
