import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Utils/commonWidget/common_AppBar.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';
import '../../../../Utils/size/app_sizing.dart';

class AllBusinessCardScreen extends StatefulWidget {
  const AllBusinessCardScreen({super.key});

  @override
  State<AllBusinessCardScreen> createState() => _AllBusinessCardScreenState();
}

class _AllBusinessCardScreenState extends State<AllBusinessCardScreen> {

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CommonAppBar(actions: [],),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              CommonBusinessCard(images: AppImages.it_business,business_name: "Weetech institute",business_Add: "Astha squere",),
              CommonBusinessCard(images: AppImages.consulting_business,business_name: "it Consulting",business_Add: "Platinum Point",),
              CommonBusinessCard(images: AppImages.farm_business,business_name: "Khodal Farma",business_Add: "Rajkot",),
              CommonBusinessCard(images: AppImages.textile_business,business_name: "Avadh textile",business_Add: "Ring Rode",),
              CommonBusinessCard(images: AppImages.teaching_business,business_name: "Ashadeep school",business_Add: "Uttran",),
              CommonBusinessCard(images: AppImages.ca_business,business_name: "Shreeji Accounting",business_Add: "Silver chowk",),
            ],
          ),
        ),
      ),
    );
  }
}
