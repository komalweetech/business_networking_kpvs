import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Config/BaseColors.dart';

class CommonTurnOverCard extends StatelessWidget {
  const CommonTurnOverCard({super.key,required this.personName,required this.businessName,required this.date,required this.amount});
  final String personName;
  final String businessName;
  final String date;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.r, bottom: 05.r,left: 18.r,right: 18.r),
      child: Container(
        height: 130.h,
        child: Card(
          color: AppColor.kSecondPrimaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 13.r, horizontal: 13.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(businessName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Person: ${personName} ", style: TextStyle(
                        fontSize: 16, color: AppColor.textBlackColor),
                    ),
                    Text(date, style: TextStyle(
                        color: AppColor.textBlackColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Amount: ", style: TextStyle(
                        fontSize: 16, color: AppColor.textBlackColor),
                    ),
                    Text(amount, style: TextStyle(
                        fontSize: 16, color: AppColor.textBlackColor),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
