import 'package:flutter/material.dart';


import '../../../../Config/Images.dart';
import '../../../../Utils/commonWidget/common_tab_appbar.dart';
import '../widget/networkUserTab_screen.dart';
import '../widget/wingUserTab_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: CommonTabAppbar(
              title: "User",
              tabText1: "Wing Users",
              tabText2: "Network Users",
              tabIcon1: AppImages.wingUser_icon ,
              tabIcon2: AppImages.networkUser_icon ,),
            backgroundColor: Colors.white,
            body: TabBarView(children: [
              WingUserTabScreen(index: 1),
              NetworkUserTabScreen(),

            ])));
  }
}
