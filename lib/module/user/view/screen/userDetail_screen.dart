

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CommonAppBar(title: "User Details",),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 15.r,horizontal: 15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text("Busines name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,),),
              ),
              SizedBox(height: 10.h,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 30.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.kSecondPrimaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18,top: 06),
                          child: Text("Total business",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor, fontWeight: FontWeight.w900,),),
                        )),
                    SizedBox(height: 10.h,),
                    Text("Day : ${"5000"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),),
                    Text("Month : ${"1,00,000"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),),
                    Text("Year : ${"15,00,000"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),)
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 30.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.kSecondPrimaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18,top: 06),
                          child: Text("Contact information",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor, fontWeight: FontWeight.w900,),),
                        )),
                    SizedBox(height: 10.h,),
                    Text("Email",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor,fontWeight: FontWeight.w700),),
                    Text("${"komalweetech211@gmail.com"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),),
                    SizedBox(height: 10.h,),
                    Text("Office Number",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor,fontWeight: FontWeight.w700),),
                    Text("${"1234567890"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),),
                    SizedBox(height: 10.h,),
                    Text("Phone Number",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor,fontWeight: FontWeight.w700),),
                    Text("${"1234567890"}",style: TextStyle(fontSize: 18,color: AppColor.textBlackColor),)
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
