import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  Widget build(BuildContext context) {
      Timer(
            Duration(seconds: 3),
            () {
              Navigator.pushReplacementNamed(context, ScreenUtils.LoginScreen);
            },
           );


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
                        color: AppColor.themeColor,
                        fontSize: 50.r,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 45.r,
                  width: 45.r,
                  child: LoadingIndicator(
                      indicatorType: Indicator.circleStrokeSpin,
                  colors: [Colors.black],),
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
