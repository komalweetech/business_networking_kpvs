import 'package:flutter/material.dart';

class GiveBusinessTab extends StatefulWidget {
  const GiveBusinessTab({super.key});

  @override
  State<GiveBusinessTab> createState() => _GiveBusinessTabState();
}

class _GiveBusinessTabState extends State<GiveBusinessTab> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Take Business Tab Content',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
