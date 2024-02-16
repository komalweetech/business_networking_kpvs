import 'package:flutter/material.dart';

import '../size/app_sizing.dart';

class CommonBusinessCard extends StatefulWidget {
  const CommonBusinessCard({super.key,required this.images,required this.businessName,required this.businessAdd,required this.businessNumber});
  final DecorationImage  images;
  final String  businessName;
  final String businessAdd;
  final String businessNumber;

  @override
  State<CommonBusinessCard> createState() => _CommonBusinessCardState();
}

class _CommonBusinessCardState extends State<CommonBusinessCard> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 10,right: 10,top: 08,bottom: 08),
      child: Container(
        height: kScreenHeight(context) / 6,
        width: kScreenWidth(context),
        child: Card(elevation: 20,

          child: Row(
            children: [
              Container(
                height:kScreenHeight(context) / 6,
                width: kScreenWidth(context) / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: widget.images,
                ),
              ),
               Padding(
                padding:  EdgeInsets.only(left: 15,right: 10,top: 13,bottom: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.businessName}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),),
                    Text("${widget.businessAdd} ",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    Text("${widget.businessNumber} ",style: TextStyle(fontSize: 15,color: Colors.grey),)
                  ],
                ),
              )

            ],
          ),
        ),),
    );
  }
}
