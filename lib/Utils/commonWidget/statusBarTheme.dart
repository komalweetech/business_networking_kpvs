import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarTheme extends StatelessWidget {
  const StatusBarTheme({super.key, this.value, required this.child});
  final SystemUiOverlayStyle? value;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: value ?? SystemUiOverlayStyle.dark,
      child: child,
    );
  }
}