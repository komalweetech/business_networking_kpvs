
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';
import 'package:kpvs/Utils/commonWidget/common_tab_appbar.dart';
import 'package:kpvs/module/business_screen/view/widgets/network_business.dart';
import 'package:kpvs/module/business_screen/view/widgets/wing_business_.dart';
import '../../../../Utils/commonWidget/common_business_card.dart';

class AllBusinessCardScreen extends StatefulWidget {
  const AllBusinessCardScreen({super.key,  this.allBusinessScreen});
  final bool? allBusinessScreen;

  @override
  State<AllBusinessCardScreen> createState() => _AllBusinessCardScreenState();
}

class _AllBusinessCardScreenState extends State<AllBusinessCardScreen> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CommonTabAppbar(
            title: widget.allBusinessScreen ?? true  ? 'All Business' : 'Users Business',
            tabText1: "Wing Business",
            tabText2: "Network Business",
            tabIcon1: AppImages.wingBusiness_icon,
            tabIcon2: AppImages.networkBusiness_icon,),

        // CommonAppBar(
        //         title: widget.allBusinessScreen ?? true  ? 'All Business' : 'Users Business',
        //         actions:  [
        //          Padding(
        //            padding: const EdgeInsets.only(right: 13),
        //            child: InkWell(
        //                child: const Icon(Icons.add_circle,color: Colors.white,size: 38,),
        //              onTap: () {
        //                print("open Add business screen");
        //                Get.toNamed('/AddBusiness');
        //              },),
        //          )
        //           ],
        //       ),
        backgroundColor: Colors.white,
        body:  const TabBarView(children: [
          WingBusiness(), // Content for the first tab
          NetworkBusiness(),
        ])
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
      ),
      onChanged: (value) {
        // Handle search query changes
      },
      onSubmitted: (value) {
        // Handle search submission
      },
    );
  }
}
