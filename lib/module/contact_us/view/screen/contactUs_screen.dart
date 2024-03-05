import 'package:flutter/material.dart';

import '../../../../Utils/commonWidget/common_AppBar.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "Contact US",
        actions: [],),
      body: Center(
        child: Text("Contact Us"),
      ),
    );
  }
}
