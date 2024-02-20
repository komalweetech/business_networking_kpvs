

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/module/business_screen/view/screen/business_Details_screen.dart';

import '../size/app_sizing.dart';

class CommonBusinessCard extends StatefulWidget {
  const CommonBusinessCard({super.key, required this.images,required this.business_Add,required this.business_name});

  final String images;
  final String business_name;
  final String business_Add;

  @override
  State<CommonBusinessCard> createState() => _CommonBusinessCardState();
}

class _CommonBusinessCardState extends State<CommonBusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 08, bottom: 08),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(7.r),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BusinessDetailScreen(businessName: widget.business_name,),
              ),
            );
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: SizedBox(
                  height: kScreenHeight(context) / 4.2,
                  width: kScreenWidth(context),
                  child: Image.asset(widget.images,fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.7),
                              blurRadius: 10,
                              spreadRadius: 6,
                              offset: Offset(0, 10))
                        ]),
                    child:  Padding(
                      padding: EdgeInsets.only(left: 15,right: 10),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${widget.business_name},",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black),),
                          Row(
                            children: [
                              Text("${widget.business_Add}",style:  TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),),
                              SizedBox(width: 15.w,),
                              Text("Phone Number : 1234567890",style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                    ),

                  )),
            ],
          ),
        ),
      ),
    );
  }
}
