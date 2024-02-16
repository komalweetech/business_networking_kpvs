import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({super.key, this.thickness, this.color});
  final double? thickness;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: thickness ?? 1.2,
      color: color ?? const Color.fromRGBO(128, 128, 128, 1),
    );
  }
}
