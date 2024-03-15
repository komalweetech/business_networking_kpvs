import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Config/Strings.dart';


class DashboardDrawerWidgets extends StatefulWidget {
  const DashboardDrawerWidgets({super.key});

  @override
  State<DashboardDrawerWidgets> createState() => _DashboardDrawerWidgetsState();
}

class _DashboardDrawerWidgetsState extends State<DashboardDrawerWidgets> {
  final bool isSelected =  false;

  void _exitApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App',style: TextStyle(fontSize: 20),),
          content: Text('Are you sure you want to LogOut?'),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.cancelbutton,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel',style: TextStyle(color: AppColor.textBlackColor),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColor.kPrimaryColor),
              onPressed: () {
                // Close the drawer before exiting
                Navigator.of(context).pop();

                // Exit the app
                SystemNavigator.pop();
              },
              child: Text('LogOut',style: TextStyle(color: AppColor.textBlackColor)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      elevation: 20.0,
      child: Column(
        children: [
          Expanded(
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
                    //       builder: (context) => const AddBusiness()),
                    // );
                    Get.toNamed('/AllBusinessScreen',arguments: true);
                  },
                ),
                ListTile(
                  leading: Image.asset(AppImages.drawer_turnover,width: 25,height: 25,),
                  title: Text("${AppStrings.drawer_turnOver}"),
                  onTap: () {
                    print("TurnOver drawer");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const UsersScreen()),
                    // );
                    Get.toNamed('/TurnOver');
                  },
                ),
                ListTile(
                  leading:Image.asset(AppImages.drawer_users,width: 25,height: 25,),
                  title: Text("${AppStrings.drawer_User}"),
                  onTap: () {
                    print("User drawer");

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const GroupScreen()),
                    // );
                    Get.toNamed('/user');
                  },
                ),
                ListTile(
                  leading: Image.asset(AppImages.drawer_group,width: 25,height: 25,),
                  title: Text("${AppStrings.drawer_group}"),
                  onTap: () {
                    print("Group drawer");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const UsersScreen()),
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.r,horizontal: 10.r),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.kPrimaryColor,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  _exitApp(context);
                },
                child: Text(" Log Out ", style: TextStyle(fontSize: 15),)),
          ),
        ],
      ),
    );
  }
}
