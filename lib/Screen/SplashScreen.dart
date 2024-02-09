import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/Utils/ScreenUtils.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
          () {
        // Navigator.pushReplacementNamed(context, ScreenUtils.LoginScreen);
        Get.toNamed('/login'); //Navigate to login screen.
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 60.r),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Text(
                    AppStrings.AppName,
                    style: TextStyle(
                        color: AppColor.kPrimaryColor,
                        fontSize: 50.r,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 45.h,
                  width: 45.w,
                  child:  LoadingIndicator(
                      indicatorType: Indicator.circleStrokeSpin,
                  colors: [AppColor.kPrimaryColor],),
                ),
                Column(
                  children: [
                    Text(AppStrings.spalsh_bottom_text1,style: TextStyle(color: Colors.grey,fontSize: 20.r),),
                    Text(AppStrings.spalsh_bottom_text2,style: TextStyle(color: Colors.grey,fontSize: 20.r),)
                  ],
                )


              ],
            ),
          ),
        ));
  }
}
