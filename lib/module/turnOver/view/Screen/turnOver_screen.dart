import 'package:flutter/material.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/module/turnOver/view/widget/takeBusinessTab.dart';

import '../../../../Config/Images.dart';
import '../../../../Utils/commonWidget/common_tab_appbar.dart';
import '../widget/giveBusinessTab.dart';

class TurnOverScreen extends StatefulWidget {
  const TurnOverScreen({super.key});

  @override
  State<TurnOverScreen> createState() => _TurnOverScreenState();
}

class _TurnOverScreenState extends State<TurnOverScreen> {
  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: CommonTabAppbar(title: "TurnOver",tabText1: "Give Business",tabText2: "Take Business",
              tabIcon1: AppImages.give_business_icon ,tabIcon2: AppImages.take_business_icon ),
            backgroundColor: Colors.white,
            body: TabBarView(children: [
              GiveBusinessTab(), // Content for the first tab
              TakeBusinessTab(),
            ])
        )
    );
  }
}
