import 'package:flutter/material.dart';

import '../../../../Utils/commonWidget/common_simple_appbar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "Setting",
        actions: [],),
      body: Center(
        child: Text("Settings")
      ),
    );
  }
}
