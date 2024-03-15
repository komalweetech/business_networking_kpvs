import 'package:flutter/material.dart';

import '../../../../Config/Images.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';

class WingBusiness extends StatefulWidget {
  const WingBusiness({super.key});

  get allBusinessScreen => null;

  @override
  State<WingBusiness> createState() => _WingBusinessState();
}

class _WingBusinessState extends State<WingBusiness> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
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
    );
  }
}
