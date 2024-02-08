import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/Utils/ScreenUtils.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    buildShowDialog(BuildContext context) {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Center(
              child: Container(
                height: 45.r,
                width: 45.r,
                child: LoadingIndicator(
                  indicatorType: Indicator.circleStrokeSpin,
                  colors: [Colors.black],
                ),
              ),
            );
          });
    }

    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.r),
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.3), width: 2.r)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.r,
                    ),
                    Image.asset(
                      AppImages.indian_flag,
                      height: 25.r,
                    ),
                    VerticalDivider(
                      thickness: 2.0.r,
                    ),
                    SizedBox(
                      width: 10.r,
                    ),
                    Container(
                      width: 200.r,
                      height: 25.r,
                      child: const Center(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          decoration: InputDecoration.collapsed(
                            hintText: " number",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  print("object === 111");
                  buildShowDialog(context);
                  FocusScope.of(context).requestFocus(new FocusNode());

                  Timer(Duration(milliseconds: 4000), () {
                    Navigator.pushReplacementNamed(
                        context, ScreenUtils.GetOtpScreen);
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.r),
                  height: 40.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: AppColor.themeColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                      child: Text(
                    AppStrings.get_otp,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.r,
                    ),
                  )),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 35.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
                          height: 50.h,
                        )),
                  ),
                  Text(
                    "OR",
                    style:
                        TextStyle(fontSize: 15.r, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 35.0),
                        child: Divider(
                          color: Colors.black,
                          height: 50.h,
                        )),
                  ),
                ],
              ),
              Text.rich(TextSpan(
                  text: AppStrings.contacts_to_get_a,
                  style: TextStyle(fontSize: 15.r, fontWeight: FontWeight.bold),
                  children: <InlineSpan>[
                    TextSpan(
                      text: AppStrings.invite,
                      style: TextStyle(
                          fontSize: 15.r,
                          fontWeight: FontWeight.bold,
                          color: AppColor.themeColor),
                    )
                  ]))
            ],
          ),
          Text(
            AppStrings.set_attende_meeting,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.r,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
