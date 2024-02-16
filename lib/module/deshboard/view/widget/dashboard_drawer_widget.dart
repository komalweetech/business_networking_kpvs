import 'package:flutter/material.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/module/aboutUs_screen/view/screen/aboutUs_screen.dart';
import 'package:kpvs/module/auth/view/screen/singUp_screen.dart';
import 'package:kpvs/module/business_screen/view/screen/add_business.dart';
import 'package:kpvs/module/contact_us/view/screen/contactUs_screen.dart';
import 'package:kpvs/module/group/view/screen/group_screen.dart';
import 'package:kpvs/module/settings/view/screen/settings_screen.dart';

class DashboardDrawerWidgets extends StatefulWidget {
  const DashboardDrawerWidgets({super.key});

  @override
  State<DashboardDrawerWidgets> createState() => _DashboardDrawerWidgetsState();
}

class _DashboardDrawerWidgetsState extends State<DashboardDrawerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:const Text("Komal kathiriya") ,
            accountEmail: const Text("komalweetech211@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:Colors.white,
                child: Image.asset(AppImages.indian_flag),
              ),
            decoration:  BoxDecoration(
              color: AppColor.kPrimaryColor
            ),
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title:  Text("${AppStrings.drawer_Profile}"),
            onTap: () {
              print("Profile ");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SingUPScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title:  Text("${AppStrings.drawer_Business}"),
            onTap: () {
              print("Categories Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddBusinessScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title:  Text("${AppStrings.drawer_Group}"),
            onTap: () {
              print("Add Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GroupScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title:  Text("${AppStrings.drawer_Setting}"),
            onTap: () {
              print("About Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title:  Text("${AppStrings.drawer_AboutUs}"),
            onTap: () {
              print("Share Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title:  Text("${AppStrings.drawer_Contact}"),
            onTap: () {
              print("Share Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
