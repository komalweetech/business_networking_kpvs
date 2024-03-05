import 'package:flutter/material.dart';

import '../../../../Utils/commonWidget/common_AppBar.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CommonAppBar(
        title: "Group",
        actions: [],),
      body: Center(
        child: Text("Group"),
      ),
    );
  }
}
