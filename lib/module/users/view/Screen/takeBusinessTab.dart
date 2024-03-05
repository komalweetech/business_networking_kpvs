import 'package:flutter/material.dart';

class TakeBusinessTab extends StatefulWidget {
  const TakeBusinessTab({super.key});

  @override
  State<TakeBusinessTab> createState() => _TakeBusinessTabState();
}

class _TakeBusinessTabState extends State<TakeBusinessTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text(
        'Give Business Tab Content',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
