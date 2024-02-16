import 'package:flutter/material.dart';

class CommonTextLabel extends StatelessWidget {
  final String text;

  const CommonTextLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
