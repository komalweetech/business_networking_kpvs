import 'package:flutter/material.dart';

class WingsScreen extends StatefulWidget {
  const WingsScreen({super.key});

  @override
  State<WingsScreen> createState() => _WingsScreenState();
}

class _WingsScreenState extends State<WingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text("wings",style: TextStyle(fontSize: 20),),
        )
    );
  }
}
