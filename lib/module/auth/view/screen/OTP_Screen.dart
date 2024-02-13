import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Strings.dart';

import '../../dependencies/auth_dependencies.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key,});


  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String verificationOtp = '';
  int resendTimer = 30;
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendTimer > 0) {
        setState(() {
          resendTimer--;
        });
      } else {
        _timer.cancel(); // Cancel the timer when it reaches 0 or desired time
        // Perform the action here (e.g., allow resending passcode)
      }
    });
  }
  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }
  void otpApi() async {
    final mobileNumber = kAuthController.phoneNumberController.text;

    // var response = await OtpApi.postApi(mobileNumber);
    // print("response of login ==== $response");
  }
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationId = "";


  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Form(
                    key: _formKey1,
                    child: Column(
                      children: [
                        OtpTextField(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          enabledBorderColor:Colors.grey,
                          margin: EdgeInsets.all(10),
                          numberOfFields: 6,
                          borderColor: AppColor.kPrimaryColor,
                          focusedBorderColor: AppColor.kPrimaryColor,
                          showFieldAsBox: true,
                          borderWidth: 2.0,
                          onCodeChanged: (String code) {
                            //handle validation or checks here if necessary
                          },
                          onSubmit: (String verificationCode) {
                            setState(() {
                              verificationOtp = verificationCode;
                            });
                            Future.delayed(Duration(seconds: 3),() async{
                              final verifyNumber = kAuthController.phoneNumberController.text;
                              final verifyOtp = verificationOtp;
                              print("verify otp is = $verifyOtp");

                              // var response = await VerifyOtp.postApi(verifyNumber,verifyOtp);
                              // print("response of login ==== ${response}");

                            });

                          },
                        ),
                        SizedBox(height: 32.r,),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.r),
                            height: 40.r,
                            width: 1.sw,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                color: AppColor.kPrimaryColor),
                            child: GestureDetector(
                                onTap: ()  {
                                  log("Navigate to signup screen");
                                  try {
                                    Get.toNamed('/singUp');
                                  } catch (e) {
                                    log("Error navigating to signup screen: $e");
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    "Verify",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.r),
                                  ),
                                ))),
                        SizedBox(
                          height: 40.r,
                        ),
                      ],
                    )),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () async {},
                      child: Text.rich(TextSpan(
                          text: AppStrings.otp_text1,
                          style: TextStyle(
                              fontSize: 15.r, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text: AppStrings.otp_text2,
                              style: TextStyle(
                                  fontSize: 15.r,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.kPrimaryColor),
                            ),
                          ])),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          AppStrings.otp_text3,
                          style: TextStyle(
                              fontSize: 15.r,
                              fontWeight: FontWeight.bold,
                              color: AppColor.kPrimaryColor),
                        ))
                  ],
                )
              ],
              // Container(
              //   width: double.maxFinite,
              //   child: TextButton(
              //     onPressed: _onClickRetry,
              //     child: Text(
              //       "Retry",
              //       style: TextStyle(color: Colors.orange),
              //     ),
              //   ),
              // )
            ),
          ),
        ),
      ),
    );
  }

}
