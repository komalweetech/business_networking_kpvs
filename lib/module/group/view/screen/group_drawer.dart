import 'package:flutter/material.dart';
import 'package:kpvs/Utils/commonWidget/common_simple_appbar.dart';

class GroupDrawer extends StatefulWidget {
  const GroupDrawer({super.key});

  @override
  State<GroupDrawer> createState() => _GroupDrawerState();
}

class _GroupDrawerState extends State<GroupDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: "Group",),
      body: Center(
        child: Text("Group drawer"),
      ),
    );
  }
}
