import 'package:flutter/material.dart';

import '../../../../Config/Images.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';

class NetworkBusiness extends StatefulWidget {
  const NetworkBusiness({super.key});

  get allBusinessScreen => null;

  @override
  State<NetworkBusiness> createState() => _NetworkBusinessState();
}

class _NetworkBusinessState extends State<NetworkBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              CommonBusinessCard(
                images: AppImages.it_business,
                business_name: "Weetech institute",
                business_Add: "Astha squere",
                showContainer: widget.allBusinessScreen,
              ),
              CommonBusinessCard(
                images: AppImages.consulting_business,
                business_name: "it Consulting",
                business_Add: "Platinum Point",
                showContainer: widget.allBusinessScreen,
              ),
              CommonBusinessCard(
                images: AppImages.farm_business,
                business_name: "Khodal Farma",
                business_Add: "Rajkot",
                showContainer: widget.allBusinessScreen,
              ),
              CommonBusinessCard(
                images: AppImages.textile_business,
                business_name: "Avadh textile",
                business_Add: "Ring Rode",
                showContainer: widget.allBusinessScreen,
              ),
              CommonBusinessCard(
                images: AppImages.teaching_business,
                business_name: "Ashadeep school",
                business_Add: "Uttran",
                showContainer: widget.allBusinessScreen,
              ),
              CommonBusinessCard(
                images: AppImages.ca_business,
                business_name: "Shreeji Accounting",
                business_Add: "Silver chowk",
                showContainer: widget.allBusinessScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
