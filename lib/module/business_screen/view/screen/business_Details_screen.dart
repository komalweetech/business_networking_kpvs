import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Images.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';
import 'package:kpvs/Utils/size/app_sizing.dart';
import 'package:kpvs/module/business_screen/view/widgets/details_container.dart';

class BusinessDetailScreen extends StatefulWidget {
  const BusinessDetailScreen({super.key,required this.businessName});
 final String businessName;

  @override
  State<BusinessDetailScreen> createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  @override
  Widget build(BuildContext context) {
    bool showText = false;

    return  Scaffold(
      // backgroundColor: AppColor.detail_BackgroundColor,
      appBar: const CommonAppBar(
        title: "Business Details",
      ),
      body: Padding(
        padding:  EdgeInsets.only(bottom: 20.h,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Tagline  for business Screen
            const Text("Build Your Business with us.",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900)),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Owner name
                DetailsContainer(
                  icon: AppImages.profile_person,
                  text: "Savan Italiya",
                  onTap: () {},
                  textName: "Tap to show Owner Name",
                ),
                // Address
                DetailsContainer(
                  icon: AppImages.Profile_Address,
                  text: "A-401,Aastha square, VIP circle,surat,395010",
                  onTap: (){},
                  textName: "Tap to show Address",)
              ],
            ),
            SizedBox(height: 08.h,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Email
                DetailsContainer(
                  icon: AppImages.profile_email,
                  text: "komalweetech211@gmail.com",
                  onTap: () {
                    setState(() {
                      showText = true;
                    });
                    },
                  textName: "Tap to show Email",),
                // Phone
                DetailsContainer(
                  icon: AppImages.profile_call,
                  text: "+91-1234567890",
                  onTap: (){
                      setState(() {
                           showText = true;
                      });
                },
                  textName: "Tap to show Phone Number",)
              ],
            ),
            SizedBox(height: 08.h,),
            // Description for business.
            Container(
              height: kScreenHeight(context) / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: AppColor.kSecondPrimaryColor
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text("What is a business description? A business description provides an overview of what your company does and what makes it unique. It introduces your brand, offering prospective investors and other interested parties an overview of the company's objectives and scope.",
                style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
