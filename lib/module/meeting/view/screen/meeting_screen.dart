import 'package:flutter/material.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({super.key});

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Meeting",style: TextStyle(fontSize: 20),),
    );
  }
}
