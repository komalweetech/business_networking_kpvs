import 'package:flutter/material.dart';

import '../../../../Utils/commonWidget/common_turnover_card.dart';

class TakeBusinessTab extends StatefulWidget {
  const TakeBusinessTab({super.key});

  @override
  State<TakeBusinessTab> createState() => _TakeBusinessTabState();
}

class _TakeBusinessTabState extends State<TakeBusinessTab> {
  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
          CommonTurnOverCard(
              personName: "komal kathiriya",
              businessName: "Weetech solution",
              date: "17/03/2024",
              amount: "5,00,000 rs"),
        ],
      ),
    );
  }
}
