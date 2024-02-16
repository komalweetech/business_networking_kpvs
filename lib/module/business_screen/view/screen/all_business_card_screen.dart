import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/Images.dart';

import '../../../../Config/BaseColors.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';
import '../../../../Utils/size/app_sizing.dart';

class AllBusinessCardScreen extends StatefulWidget {
  const AllBusinessCardScreen({super.key});

  @override
  State<AllBusinessCardScreen> createState() => _AllBusinessCardScreenState();
}

class _AllBusinessCardScreenState extends State<AllBusinessCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: kScreenHeight(context) / 3,
            width: kScreenWidth(context),
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(40),
                //     bottomRight: Radius.circular(40)
                // ),
                image: DecorationImage(
              image: AssetImage(
                AppImages.business_background,
              ),
              fit: BoxFit.cover,
            )),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    CommonBusinessCard(
                       images: DecorationImage(image: AssetImage(AppImages.it_business)),
                       businessName: "Weetech institute",
                       businessAdd: "Astha square",
                       businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.teaching_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.restaurants_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.textile_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.sand_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.farm_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.food_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.parlour_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.petrol_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.consulting_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),
                    CommonBusinessCard(
                        images: DecorationImage(image: AssetImage(AppImages.ca_business)),
                        businessName: "Weetech institute",
                        businessAdd: "Astha square",
                        businessNumber: "1111111111"),



                  ],
                ),
              ),
            ),
            ),

        ],
      ),
    );
  }
}
