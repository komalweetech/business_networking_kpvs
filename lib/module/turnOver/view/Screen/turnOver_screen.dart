import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/module/turnOver/view/Screen/add_give_business.dart';
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
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: const CommonTabAppbar(
                title: "TurnOver",
                tabText1: "Give Business",
                tabText2: "Take Business",
                tabIcon1: AppImages.give_business_icon ,
                tabIcon2: AppImages.take_business_icon ),
            backgroundColor: Colors.white,
            body: const TabBarView(children: [
              GiveBusinessTab(), // Content for the first tab
              TakeBusinessTab(),
            ]),
          floatingActionButton: Padding(
            padding:  EdgeInsets.only(right: 10.r,bottom: 10.r),
            child: FloatingActionButton(
              shape: const CircleBorder(),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const AddGiveBusiness()),
                  );
                },
              backgroundColor: AppColor.kPrimaryColor,
              child: const Icon(Icons.add,color: Colors.white,size: 30,),
            ),
          ),
        )
    );
  }
}
