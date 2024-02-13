import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerMenuListTile extends StatelessWidget {
  const DrawerMenuListTile(
      {super.key, required this.icon, required this.name, required this.onTap});
  final String icon;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: Row(
          children: [
            SizedBox(width: 17.h),
            Image.asset(
              icon,
              height: 21,
              width: 25,
            ),
            SizedBox(width: 14.h),
            Text(
              name,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
