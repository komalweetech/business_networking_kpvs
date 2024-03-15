import 'package:flutter/material.dart';

import '../../../../Utils/commonWidget/common_simple_appbar.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "About Us",
        actions: [],),
      body: Center(
        child: Text("About Us"),
      ),
    );
  }
}
