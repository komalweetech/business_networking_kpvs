import 'package:flutter/material.dart';

import '../../Config/BaseColors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key, this.actions});
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.kPrimaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), // Adjust the radius as needed
            bottomRight: Radius.circular(20), // Adjust the radius as needed
          ),
        ),
        height: preferredSize.height,
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0, // Set elevation to 0 if you don't want shadow
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white,),
          actions: actions,
          // Other AppBar properties like title, actions, etc.
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
