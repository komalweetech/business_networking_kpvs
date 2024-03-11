import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/module/users/view/Screen/takeBusinessTab.dart';
import 'giveBusinessTab.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.kPrimaryColor,
              centerTitle: true,
              title:  Padding(
                padding:  EdgeInsets.only(top: 22.r),
                child: const Text('User', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              leading: Padding(
                padding:  EdgeInsets.only(top: 20.r),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  // Use leadingIcon if provided, otherwise default to Icons.arrow_back_rounded
                  onPressed: () {
                    Get.back();
                  }, // Call the callback function
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(110),
                child: Material(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  elevation: 4, // Add elevation to create a shadow effect
                  child: TabBar(
                    indicatorColor: AppColor.kPrimaryColor,
                    labelColor: AppColor.kPrimaryColor,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.business),
                        text: 'Give Business',
                      ),
                      Tab(
                        icon: Icon(Icons.business_center),
                        text: 'Take Business',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: const TabBarView(children: [
              GiveBusinessTab(), // Content for the first tab
              TakeBusinessTab(),
            ])));
  }
}
