import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kpvs/Utils/commonWidget/common_turnover_card.dart';

class GiveBusinessTab extends StatefulWidget {
  const GiveBusinessTab({super.key});

  @override
  State<GiveBusinessTab> createState() => _GiveBusinessTabState();
}

class _GiveBusinessTabState extends State<GiveBusinessTab> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
