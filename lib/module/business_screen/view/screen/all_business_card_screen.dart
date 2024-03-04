
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Utils/commonWidget/common_AppBar.dart';
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
    return Scaffold(
      appBar:  CommonAppBar(
              title: widget.allBusinessScreen ?? true  ? 'All Business' : 'Users Business',
              actions:  [
               Padding(
                 padding: const EdgeInsets.only(right: 13),
                 child: InkWell(
                     child: const Icon(Icons.add_circle,color: Colors.white,size: 38,),
                   onTap: () {
                     print("open Add business screen");
                     Get.toNamed('/AddBusiness');
                   },),
               )
                ],
            ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
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
