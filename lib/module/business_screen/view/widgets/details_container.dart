import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/Config/BaseColors.dart';
import 'package:kpvs/Utils/size/app_sizing.dart';

class DetailsContainer extends StatefulWidget {
  const DetailsContainer({super.key,required this.text,required this.icon,required this.onTap,this.textName});
  final String text;
  final String icon;
  final VoidCallback onTap;
  final String? textName;

  @override
  State<DetailsContainer> createState() => _DetailsContainerState();
}

class _DetailsContainerState extends State<DetailsContainer> {
  bool showText = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
         showText = !showText;
        });
        widget.onTap();
        },
      child: Container(
        height: 150.h,
        width: kScreenWidth(context) / 2.4,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.4),
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: const Offset(0, 10))
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(widget.icon),color: AppColor.kPrimaryColor,height: 35,width: 35,),
               SizedBox(height: 08.h,),
               Text(showText ? widget.text : widget.textName!,style: const TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w900),)
            ],
          ),
        ),

      ),
    );
  }
}
