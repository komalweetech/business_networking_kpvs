import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Config/Strings.dart';


class SingUPScreen extends StatefulWidget {
  const SingUPScreen({super.key});

  @override
  State<SingUPScreen> createState() => _SingUPScreenState();
}

class _SingUPScreenState extends State<SingUPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: AppColor.kPrimaryColor,
          centerTitle: true,
          leadingWidth: 80,
          leading: Center(
            child: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 30,)
              ),
            ),
          ),
          title:  Text(AppStrings.profile_title,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
