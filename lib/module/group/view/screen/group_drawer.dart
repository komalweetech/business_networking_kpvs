import 'package:flutter/material.dart';

class GroupDrawer extends StatefulWidget {
  const GroupDrawer({super.key});

  @override
  State<GroupDrawer> createState() => _GroupDrawerState();
}

class _GroupDrawerState extends State<GroupDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Group drawer"),
      ),
    );
  }
}
