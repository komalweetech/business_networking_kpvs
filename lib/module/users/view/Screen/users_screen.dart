import 'package:flutter/material.dart';

import '../../../../Config/Images.dart';
import '../../../../Utils/commonWidget/common_AppBar.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: "Users Screen",
        actions: [],),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      CommonBusinessCard(images: AppImages.textile_business,business_name: "Avadh textile",business_Add: "Ring Rode",),
                      CommonBusinessCard(images: AppImages.restaurants_business,business_name: "Charcola dhosa",business_Add: "Sudama chowk",),
                      CommonBusinessCard(images: AppImages.food_business,business_name: "Jalaram Food cornar",business_Add: "Vip Khavdhra gali ",),
                      CommonBusinessCard(images: AppImages.parlour_business,business_name: "ABC parlour" ,business_Add: "Katargam",),
                      CommonBusinessCard(images: AppImages.sand_business,business_name: "ABC sand ",business_Add: "Dhabholi",),
                      CommonBusinessCard(images: AppImages.it_business,business_name: "Weetech institute",business_Add: "Astha squere",),
                      CommonBusinessCard(images: AppImages.consulting_business,business_name: "it Consulting",business_Add: "Platinum Point",),
                      CommonBusinessCard(images: AppImages.farm_business,business_name: "Khodal Farma",business_Add: "Rajkot",),
                      CommonBusinessCard(images: AppImages.ca_business,business_name: "Shreeji Accounting",business_Add: "Silver chowk",),
                      CommonBusinessCard(images: AppImages.teaching_business,business_name: "Ashadeep school",business_Add: "Uttran",),

                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );;
  }
}
