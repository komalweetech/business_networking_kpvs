import 'package:flutter/material.dart';
import 'package:kpvs/Utils/commonWidget/common_AppBar.dart';

class BusinessDetailScreen extends StatefulWidget {
  const BusinessDetailScreen({super.key,required this.businessName});
 final String businessName;

  @override
  State<BusinessDetailScreen> createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
      ),
      body: Center(
        child: Text("${widget.businessName}",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
