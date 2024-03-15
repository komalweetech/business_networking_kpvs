import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';
import 'package:kpvs/Utils/commonWidget/statusBarTheme.dart';
import 'package:kpvs/module/attendences/view/screen/attendences_screen.dart';
import 'package:kpvs/module/deshboard/view/widget/dashboard_drawer_widget.dart';
import 'package:kpvs/module/home/view/screen/home_screen.dart';
import 'package:kpvs/module/meeting/view/screen/meeting_screen.dart';
import 'package:kpvs/module/wings/view/screen/wings_screen.dart';

import '../../../../Utils/enum/ui_enum.dart';
import '../../dependencies/dashBoard_dependencies.dart';
import '../widget/bottom_nav_bar.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Define the GlobalKey

  @override
  Widget build(BuildContext context) {
    return StatusBarTheme(
      value: SystemUiOverlayStyle.light,
        child: PopScope(
          canPop: false,
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: const Color.fromRGBO(244, 245, 247, 1),
            drawer: const DashboardDrawerWidgets(),
            appBar: CommonAppBar(
              title: "KPVE",
              leadingIcon: Icons.menu, // Set the leading icon to menu icon for the drawer
              leadingAction: () => _scaffoldKey.currentState!.openDrawer(), // Open the drawer when the leading icon is pressed
            ),

            // AppBar(
            //   backgroundColor: AppColor.kPrimaryColor,
            //   title: Text("KPVE",style: TextStyle(color: Colors.white),),
            //   centerTitle: true,
            //   iconTheme:  IconThemeData(color: Colors.white,size: 25.r),
            // ),
            body: Obx(() {
              switch (kDashboardController.selectedBottomNavBarButton.value) {
                case BottomNavBarMenuEnum.home:
                  return const HomeScreen();

                case BottomNavBarMenuEnum.meeting:
                  return const MeetingScreen();

                case BottomNavBarMenuEnum.attendences:
                  return const AttendancesScreen();

                case BottomNavBarMenuEnum.wings:
                  return  const WingsScreen();

                  default:
                  return const HomeScreen();
              }
            }),
            // drawer: DashboardDrawer(),
            bottomNavigationBar: const BottomNavBarWidget(),
          ),
        ));
  }
}


