

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpvs/module/user/view/screen/userDetail_screen.dart';

class WingUserTabScreen extends StatefulWidget {
  const WingUserTabScreen({super.key,required this.index});
  final int index;

  @override
  State<WingUserTabScreen> createState() => _WingUserTabScreenState();
}

class _WingUserTabScreenState extends State<WingUserTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.r),
      child: ListView.separated(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 10,
          itemBuilder: (context,index) {
            return  Padding(
              padding:  EdgeInsets.only(top: 05.r,bottom: 05.r),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDetailScreen()),
                  );
                },
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFhmG1RGrK-zD_uKXNCAhkP8W68s35Ojst7w&usqp=CAU",
                      height: 60.h,width: 60.w,fit: BoxFit.cover,),
                  ),
                  title: Text('Name ${widget.index}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                  subtitle: Text('Last message from Name ${widget.index}',style: TextStyle(fontSize: 13),),
                  trailing: Text('10:00 PM',style: TextStyle(fontSize: 13),),
                ),
              ),
            );
          }, separatorBuilder: (context, index) {
          return  Divider(height: 10.h,color: Colors.grey,);
      }, ),
    );
  }
}