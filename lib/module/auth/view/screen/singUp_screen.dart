import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kpvs/Config/Strings.dart';

import '../../dependencies/profile_dependencies.dart';
import '../widgets/edit_profile_dropDown.dart';
import '../widgets/edit_profile_text_field.dart';


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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          // backgroundColor: AppColor.kPrimaryColor,
          centerTitle: true,
          leadingWidth: 80,
          leading: Center(
            child: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                // color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30,)
              ),
            ),
          ),
          title:  Text(AppStrings.profile_title,style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: 18.r,right: 18.r,bottom: 18.r),
          child: SingleChildScrollView(
           physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      height: 70.h,
                      width: 70.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Obx(
                            () => kProfileController.selectedProfilePickLink.value != ''
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Obx(
                                () => Image.file(
                              File(
                                kProfileController.selectedProfilePickLink.value,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                            : SizedBox(),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 24.h,
                        width: 24.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(128, 128, 128, 1),
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
              EditProfileTextField(
                  controller: controller["firstName"]!,
                  labelText: "FirstName"),
              EditProfileTextField(
                  controller: controller["middleName"]!,
                  labelText: "MiddleName"),
              EditProfileTextField(
                  controller: controller["lastName"]!,
                  labelText: "LastName"),
              EditProfileTextField(
                  controller: controller["email"]!,
                  labelText: "Email"),
              EditProfileTextField(
                  controller: controller["number"]!,
                  labelText: "Phone Number"),
              EditProfileTextField(
                  controller: controller["wingpreference"]!,
                  labelText: "Wing Preference"),
              EditProfileTextField(
                  controller: controller["refMemberId"]!,
                  labelText: "Reference Member ID"),
              EditProfileDropdown(
                  controller: controller["country"]!,
                  labelText: "Country",
                  items: const ['India','Canada','Chile','Finland','Iran','Japan','Vietnam','Korea','Thailand'],
              ),
              EditProfileDropdown(
                  controller: controller["state"]!,
                  labelText: "State",
                  items: const ['Andhra Pradesh','Assam','Goa','Gujarat','Jharkhand','Kerala','Punjab'],
              ),
              EditProfileDropdown(
                  controller: controller["city"]!,
                  labelText: "City",
                  items: const ['Surat','Mumbai','Delhi','Kolkata','Chennai','Bangalore','Hyderabad','Ahmedabad','Pune',],
              ),
              SizedBox(height: 20.h,),
            ],
          ),

          ),
        ),
      ),
    );
  }
}
