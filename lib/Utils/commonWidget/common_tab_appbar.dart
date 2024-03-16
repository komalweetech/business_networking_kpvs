import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Config/BaseColors.dart';

class CommonTabAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CommonTabAppbar({super.key,required this.title,required this.tabText1,
    required this.tabText2,required this.tabIcon1,required this.tabIcon2});
  final String title;
  final String tabText1;
  final String tabText2;
  final String tabIcon1;
  final String tabIcon2;

  @override
  State<CommonTabAppbar> createState() => _CommonTabAppbarState();


  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight + 110);
}

class _CommonTabAppbarState extends State<CommonTabAppbar> {
  int selectIndex = 0;


  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: AppColor.kPrimaryColor,
      centerTitle: true,
      title:  Padding(
        padding:  EdgeInsets.only(top: 20.r),
        child:  Text(widget.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      leading: Padding(
        padding:  EdgeInsets.only(top: 20.r),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 25,
          ),
          // Use leadingIcon if provided, otherwise default to Icons.arrow_back_rounded
          onPressed: () {
            Get.back();
          }, // Call the callback function
        ),
      ),
      bottom: PreferredSize(preferredSize: const Size.fromHeight(110),
        child: Material(
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(20),
          //     bottomRight: Radius.circular(20),
          //   ),
          // ),
          elevation: 4, // Add elevation to create a shadow effect
          child: TabBar(
            padding: EdgeInsets.only(top: 10.r,),
            indicatorColor: AppColor.kPrimaryColor,
            labelColor: AppColor.kPrimaryColor,
            unselectedLabelColor: AppColor.textBlackColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 04,
            labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
            tabs: [
              Padding(
                padding:  EdgeInsets.only(bottom: 08.r),
                child: Tab(
                  text: widget.tabText1,
                  icon: ColorFiltered(
                    colorFilter: selectIndex == 0 ?  ColorFilter.mode(AppColor.kPrimaryColor, BlendMode.srcIn)   :
                            ColorFilter.mode(AppColor.textBlackColor, BlendMode.srcIn),
                    child:  Image(image: AssetImage(widget.tabIcon1,),height: 30.h,width: 30.w,),
                  )
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 08.r),
                child: Tab(
                  text: widget.tabText2,
                  icon: ColorFiltered(
                    colorFilter: selectIndex == 1 ? ColorFilter.mode(AppColor.kPrimaryColor, BlendMode.srcIn)  :
                        ColorFilter.mode(AppColor.textBlackColor, BlendMode.srcIn),
                    child: Image(image: AssetImage(widget.tabIcon2),height:30.h,width: 30.w),
                  )
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }


}
