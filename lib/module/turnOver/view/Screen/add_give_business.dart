import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddGiveBusiness extends StatefulWidget {
  const AddGiveBusiness({super.key});

  @override
  State<AddGiveBusiness> createState() => _AddGiveBusinessState();
}

class _AddGiveBusinessState extends State<AddGiveBusiness> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CommonAppBar(title: "B.Given",),
      body: Padding(
        padding:  EdgeInsets.only(top: 15.r,bottom: 15.r,left: 18.r,right: 18.r),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45.h,
                decoration: BoxDecoration(
                  // color: AppColor.textfieldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.textfieldBoderColor)
                ),
                child:  const TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Thank you to:',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 45.h,
                decoration: BoxDecoration(
                  // color: AppColor.textfieldBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.textfieldBoderColor)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 13.r,right: 13.r),
                  child: Row(
                    children: [
                      const Icon(Icons.currency_rupee_rounded,color: Colors.red,size: 30,),
                     VerticalDivider(color: AppColor.kPrimaryColor,),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.r,left: 10.r),
                            child: const TextField(
                              cursorColor: Colors.black,
                              style: TextStyle(fontSize: 20, color: Colors.black),
                              decoration: InputDecoration(
                                hintText: ' Amount',
                                border: InputBorder.none, // Remove border of the text field
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ),
              SizedBox(height: 20.h,),
              const Text("Business Type"),
             ToggleSwitch(
               minHeight: 40.h,
               minWidth: 160.w,
               initialLabelIndex: 0,
               cornerRadius: 10,
               activeFgColor: AppColor.kPrimaryColor,
               inactiveBgColor: Colors.grey,
               totalSwitches: 2,
               customTextStyles: const [
                 TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                 TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
               ],
               labels: ['New','Repeat'],
               centerText: true,
               fontSize: 18,
               onToggle: (index) {
                 print('switched to: $index');
               },

             ),
              SizedBox(height: 20.h,),
              const Text("Referral Type"),
              ToggleSwitch(
                minHeight: 40.h,
                minWidth: 105.w,
                initialLabelIndex: 0,
                cornerRadius: 10,
                activeFgColor: AppColor.kPrimaryColor,
                inactiveBgColor: Colors.grey,
                totalSwitches: 3,
                customTextStyles: const [
                  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                  TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                ],
                labels: ['Inside','Outside','Tier3+'],
                centerText: true,
                fontSize: 18,
                onToggle: (index) {
                  print('switched to: $index');
                },

              ),
              SizedBox(height: 20.h,),
              Container(
                height: 45.h,
                decoration: BoxDecoration(
                  // color: AppColor.textfieldBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.textfieldBoderColor)
                ),
                child:  const TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Wing Name',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.textfieldBoderColor)
                ),
                child: const TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Comments:',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}
