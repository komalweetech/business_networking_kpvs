import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/module/aboutUs_screen/view/screen/aboutUs_screen.dart';
import 'package:kpvs/module/business_screen/view/screen/add_business.dart';
import 'package:kpvs/module/contact_us/view/screen/contactUs_screen.dart';
import 'package:kpvs/module/group/view/screen/group_screen.dart';
import 'package:kpvs/module/settings/view/screen/settings_screen.dart';

import '../../../users/view/Screen/users_screen.dart';

class DashboardDrawerWidgets extends StatefulWidget {
  const DashboardDrawerWidgets({super.key});

  @override
  State<DashboardDrawerWidgets> createState() => _DashboardDrawerWidgetsState();
}

class _DashboardDrawerWidgetsState extends State<DashboardDrawerWidgets> {
  final bool isSelected =  false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("Profile drawer ");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SingUPScreen()),
              // );
              Get.toNamed('/singUp');
            },
            child: UserAccountsDrawerHeader(
                accountName: const Text("Komal kathiriya"),
                accountEmail: const Text("komalweetech211@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(AppImages.indian_flag),
                ),
                decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor
                ),
            ),
          ),
          ListTile(
            leading:  Image.asset(AppImages.drawer_business,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_Business}"),
            onTap: () {
              print("Add businesses drawer");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const AddBusinessScreen()),
              // );
              Get.toNamed('/AllBusiness');
            },
          ),
          ListTile(
            leading: Image.asset(AppImages.drawer_users,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_users}"),
            onTap: () {
              print("User drawer");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const UsersScreen()),
              // );
              Get.toNamed('/users');
            },
          ),
          ListTile(
            leading:Image.asset(AppImages.drawer_group,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_Group}"),
            onTap: () {
              print("Group drawer");

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const GroupScreen()),
              // );
              Get.toNamed('/group');
            },
          ),
          ListTile(
            leading:Image.asset(AppImages.drawer_settings,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_Setting}"),
            onTap: () {
              print("Settings drawer");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SettingsScreen()),
              // );
              Get.toNamed('/settings');
            },
          ),
          ListTile(
            leading: Image.asset(AppImages.drawer_aboutUs,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_AboutUs}"),
            onTap: () {
              print("About Us drawer");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AboutUsScreen()),
              // );
              Get.toNamed('/aboutUs');
            },
          ),
          ListTile(
            leading:Image.asset(AppImages.drawer_conactUs,width: 25,height: 25,),
            title: Text("${AppStrings.drawer_Contact}"),
            onTap: () {
              print("Contact Us drawer");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const ContactUsScreen()),
              // );
              Get.toNamed('/contactUs');
            },
          ),
        ],
      ),
    );
  }
}
