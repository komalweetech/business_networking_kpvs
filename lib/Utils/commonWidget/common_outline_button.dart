import 'package:flutter/material.dart';

class RoundedOutlineButton extends StatelessWidget {
  final String text;
  final String? iconAsset;
  final VoidCallback onPressed;
  final Color textColor;
  final Color iconColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double iconSize;
  final MainAxisAlignment mainAxisAlignment;

  const RoundedOutlineButton({
    Key? key,
    required this.text,
    this.iconAsset,
    required this.onPressed,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    this.borderColor = Colors.black,
    this.borderRadius = 20.0,
    this.padding = const EdgeInsets.all(16.0),
    this.iconSize = 24.0,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Image.asset(iconAsset!),
          Text(text, style: TextStyle(color: textColor),
          ),

        ],
      ),
    );
  }
}
