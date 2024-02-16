import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Config/Strings.dart';
import 'package:kpvs/Utils/commonWidget/commonTextLabel.dart';
import 'package:kpvs/Utils/commonWidget/common_outline_button.dart';
import 'package:kpvs/Utils/divider/common_vertical_divider.dart';
import 'package:kpvs/Utils/size/app_sizing.dart';

import '../../dependencies/profile_dependencies.dart';

class SingUPScreen extends StatefulWidget {
  const SingUPScreen({super.key});

  @override
  State<SingUPScreen> createState() => _SingUPScreenState();
}

class _SingUPScreenState extends State<SingUPScreen> {
  Map<String, TextEditingController> controller = {};

  void _createTextEditingController(String fieldName) {
    controller[fieldName] = TextEditingController();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createTextEditingController('firstName');
    _createTextEditingController('middleName');
    _createTextEditingController('lastName');
    _createTextEditingController('email');
    _createTextEditingController('number');
    _createTextEditingController('wingpreference');
    _createTextEditingController('refMemberId');
    _createTextEditingController('country');
    _createTextEditingController('state');
    _createTextEditingController('city');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: kScreenHeight(context) / 2.5,
            width: kScreenWidth(context),
            decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: EdgeInsets.only(left: 20.r, right: 20.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          AppImages.left_arrow,
                          width: 15.h,
                          height: 15.h,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: kScreenWidth(context) / 3),
                      const Text(
                        "Details",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  InkWell(
                    onTap: () async {
                      log("image button is not working");
                      await kProfileController.picProfileImage();
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Stack(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Obx(
                            () => kProfileController
                                        .selectedProfilePickLink.value !=
                                    ''
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Obx(
                                      () => Image.file(
                                        File(
                                          kProfileController
                                              .selectedProfilePickLink.value,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    // Apply borderRadius to ClipRRect
                                    child: Image.asset(
                                      AppImages.profile_boy,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 24.h,
                            width: 24.h,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.edit,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  const Text(
                    "Komal kathiriya",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const Text(
                    "sr.FlutterDeveloper",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              border: Border.all(color: Colors.white)),
                          height: 40.h,
                          width: 40.h,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              AppImages.profile_email,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              border: Border.all(color: Colors.white)),
                          height: 40.h,
                          width: 40.h,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Image.asset(
                              AppImages.profile_call,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const CommonDivider(
                          color: Colors.white,
                          thickness: 02,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              border: Border.all(color: Colors.white)),
                          height: 40.h,
                          width: 40.h,
                          child: Padding(
                            padding: EdgeInsets.all(07),
                            child: Image.asset(
                              AppImages.profile_whatsapp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              border: Border.all(color: Colors.white)),
                          height: 40.h,
                          width: 40.h,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              AppImages.profile_star,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 18.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonTextLabel(text: "${AppStrings.email}"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd5e9db),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                        height: 35.h,
                        width: 35.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.profile_email,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${AppStrings.official}",
                              style: TextStyle(
                                  color: AppColor.semiTitleColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "komalweetech211@gmail.com",
                              style: TextStyle(
                                  color: AppColor.textBlackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xc5d5e9db),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                        height: 35.h,
                        width: 35.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.profile_email,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${AppStrings.personal}",
                              style: TextStyle(
                                  color: AppColor.semiTitleColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "komalweetech211@gmail.com",
                              style: TextStyle(
                                  color: AppColor.textBlackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColor.kSecondPrimaryColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonTextLabel(text: "${AppStrings.number}"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd5e9db),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                        height: 35.h,
                        width: 35.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.profile_call,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "+91 1234567890",
                              style: TextStyle(
                                  color: AppColor.textBlackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColor.kSecondPrimaryColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonTextLabel(text: "${AppStrings.team}"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd5e9db),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                        height: 35.h,
                        width: 35.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.profile_team,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project Operation Team",
                              style: TextStyle(
                                  color: AppColor.textBlackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            color: Color(0xffd5e9db),
                            border: Border.all(color: AppColor.kPrimaryColor)),
                        height: 40.h,
                        width: 40.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.right_arrow,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColor.kSecondPrimaryColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CommonTextLabel(text: "${AppStrings.leads_by}"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd5e9db),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                        height: 35.h,
                        width: 35.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.profile_person,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Darrell Steward",
                              style: TextStyle(
                                  color: AppColor.textBlackColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            color: Color(0xffd5e9db),
                            border: Border.all(color: AppColor.kPrimaryColor)),
                        height: 40.h,
                        width: 40.h,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            AppImages.right_arrow,
                            color: AppColor.kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColor.kSecondPrimaryColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppImages.profile_add_user,
                                height: 15,
                                width: 15,
                              ),
                            ),
                            Text(
                              "${AppStrings.add_contact}",
                              style: TextStyle(
                                color: AppColor.textBlackColor,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColor.kSecondPrimaryColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppImages.profile_share,
                                height: 15,
                                width: 15,
                              ),
                            ),
                            Text(
                              "${AppStrings.share}",
                              style: TextStyle(
                                color: AppColor.textBlackColor,
                              ),
                            ),
                          ],
                        )),
                  ]),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),

      // EditProfileTextField(
      //     controller: controller["firstName"]!,
      //     labelText: "FirstName"),
      // EditProfileTextField(
      //     controller: controller["middleName"]!,
      //     labelText: "MiddleName"),
      // EditProfileTextField(
      //     controller: controller["lastName"]!,
      //     labelText: "LastName"),
      // EditProfileTextField(
      //     controller: controller["email"]!,
      //     labelText: "Email"),
      // EditProfileTextField(
      //     controller: controller["number"]!,
      //     labelText: "Phone Number"),
      // EditProfileTextField(
      //     controller: controller["wingpreference"]!,
      //     labelText: "Wing Preference"),
      // EditProfileTextField(
      //     controller: controller["refMemberId"]!,
      //     labelText: "Reference Member ID"),
      // EditProfileDropdown(
      //     controller: controller["country"]!,
      //     labelText: "Country",
      //     items: const ['India','Canada','Chile','Finland','Iran','Japan','Vietnam','Korea','Thailand'],
      // ),
      // EditProfileDropdown(
      //     controller: controller["state"]!,
      //     labelText: "State",
      //     items: const ['Andhra Pradesh','Assam','Goa','Gujarat','Jharkhand','Kerala','Punjab'],
      // ),
      // EditProfileDropdown(
      //     controller: controller["city"]!,
      //     labelText: "City",
      //     items: const ['Surat','Mumbai','Delhi','Kolkata','Chennai','Bangalore','Hyderabad','Ahmedabad','Pune',],
      // ),
      // SizedBox(height: 20.h,),
    );
  }
}
