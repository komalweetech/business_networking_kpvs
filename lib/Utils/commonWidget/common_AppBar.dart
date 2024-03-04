import 'package:flutter/material.dart';

import '../../Config/BaseColors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key, this.actions, this.title});
  final List<Widget>? actions;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        decoration:  BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), // Adjust the radius as needed
            bottomRight: Radius.circular(20), // Adjust the radius as needed
          ),
        ),
        height: preferredSize.height,
        child: Padding(
          padding:  const EdgeInsets.only(top: 10,bottom: 25),
          child: AppBar(
            title: Text("${title}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0, // Set elevation to 0 if you don't want shadow
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 23,), // Use any custom icon here
              onPressed: () {
                Navigator.of(context).pop(); // Example of popping the current route
              },
            ),
            actions: actions,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(130); // Adjust the height of the AppBar
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 20); // 20 is the radius of the bottom corners
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
