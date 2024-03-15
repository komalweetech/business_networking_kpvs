import 'package:flutter/material.dart';

class NetworkUserTabScreen extends StatefulWidget {
  const NetworkUserTabScreen({super.key});

  @override
  State<NetworkUserTabScreen> createState() => _NetworkUserTabScreenState();
}

class _NetworkUserTabScreenState extends State<NetworkUserTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Network User Tab',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
