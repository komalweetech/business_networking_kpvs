import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/Utils/AuthFlagUtils.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int _otpCodeLength = 6;
  bool _isLoadingButton = false;
  String _otpCode = "";

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);

  TextEditingController OTPController = new TextEditingController();

  // late Timer _timer;
  int _startTime = 15;

  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationId = "";
  String _verificationId = "";
  int? _resendToken;

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
                        TextFieldPin(
                            textController: OTPController,
                            autoFocus: true,
                            codeLength: _otpCodeLength,
                            alignment: MainAxisAlignment.center,
                            defaultBoxSize: 46.0,
                            margin: 5.r,
                            selectedBoxSize: 46.0,
                            textStyle: TextStyle(fontSize: 16),
                            defaultDecoration: _pinPutDecoration.copyWith(
                                border: Border.all(color: AppColor.themeColor)),
                            selectedDecoration: _pinPutDecoration,
                            onChange: (code) {
                              setState(() {
                                OTPController.text = code;
                              });
                              _onOtpCallBack(code, false);
                            }),
                        SizedBox(
                          height: 32.r,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.r),
                            height: 40.r,
                            width: 1.sw,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                color: AppColor.themeColor),
                            child: GestureDetector(
                                onTap: () async {
                                  print("verification button is pressed");
                                  var verificationFlag =
                                      await verifyOTP(_otpCode);
                                  print(
                                      "your verification flag is == $verificationFlag");
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
                      onTap: () async {
                        await _getOTP();
                      },
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
                                  color: AppColor.themeColor),
                            ),
                          ])),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          AppStrings.otp_text3,
                          style: TextStyle(
                              fontSize: 15.r,
                              fontWeight: FontWeight.bold,
                              color: AppColor.themeColor),
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

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  // get otp
  _getOTP() async {
    print("otp is sended");
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+919898489400',
      timeout: const Duration(seconds: 25),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == "invalid-phone-number") {
          print("your mobile number is invalid");
        } else {
          print("something went wrong try again");
        }
      },
      forceResendingToken: _resendToken,
      codeSent: (String verificationId, int? resendToken) async {
        print("verification ids === $verificationId");
        _verificationId = verificationId;
        _resendToken = resendToken;
        print("resend token === $resendToken");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = _verificationId;
      },
    );
  }

  Future<bool> verifyOTP(String OTP) async {
    var credential = await auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: OTP));

    return credential.user != null ? true : false;
  }

  @override
  void initState() {
    super.initState();
    _getOTP();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() async {
      this._otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        // _enableButton = false;
        _isLoadingButton = true;
        var verifyFlag = await verifyOTP(otpCode);

        AuthFlagUtils.UserIsAuthenticated = verifyFlag;

        print("your verification is === $verifyFlag");
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        // _enableButton = true;
        _isLoadingButton = false;
      } else {
        // _enableButton = false;
      }
    });
  }

  _verifyOtpCode() {
    FocusScope.of(context).requestFocus(new FocusNode());
    Timer(Duration(milliseconds: 4000), () {
      setState(() {
        _isLoadingButton = false;
        // _enableButton = false;
      });
    });
  }
}
