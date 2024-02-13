import 'package:flutter/material.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/module/aboutUs_screen/view/screen/aboutUs_screen.dart';
import 'package:kpvs/module/business_screen/view/screen/add_business.dart';
import 'package:kpvs/module/contact_us/view/screen/contactUs_screen.dart';
import 'package:kpvs/module/group/view/screen/group_screen.dart';
import 'package:kpvs/module/home/view/screen/home_screen.dart';
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
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      elevation: 20.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(accountName:Text("Komal kathiriya") , accountEmail: Text("komalweetech211@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(AppImages.indian_flag),
                backgroundColor:Colors.white,
              ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.green], // Your gradient colors
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text("Add Your Business"),
            onTap: () {
              print("Categories Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddBusinessScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("Group"),
            onTap: () {
              print("Add Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {
              print("About Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("About Us"),
            onTap: () {
              print("Share Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Contact Us"),
            onTap: () {
              print("Share Clicked");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
