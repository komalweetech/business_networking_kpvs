import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Utils/commonWidget/statusBarTheme.dart';
import 'package:kpvs/module/attendences/view/screen/attendences_screen.dart';
import 'package:kpvs/module/business_screen/view/screen/add_business.dart';
import 'package:kpvs/module/deshboard/view/widget/dashboard_drawer_widget.dart';
import 'package:kpvs/module/home/view/screen/home_screen.dart';
import 'package:kpvs/module/meeting/view/screen/meeting_screen.dart';
import 'package:kpvs/module/settings/view/screen/settings_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return StatusBarTheme(
      value: SystemUiOverlayStyle.light,
        child: PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(244, 245, 247, 1),
            drawer: const DashboardDrawerWidgets(),
            appBar:AppBar(
              backgroundColor: AppColor.kPrimaryColor,
              title: Text("KPVE",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              iconTheme:  IconThemeData(color: Colors.white,size: 25.r),
            ),
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
