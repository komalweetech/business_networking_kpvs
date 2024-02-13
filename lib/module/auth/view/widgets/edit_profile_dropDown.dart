import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EditProfileDropdown extends StatelessWidget {
  const EditProfileDropdown({
    Key? key,
    required this.controller,
    required this.items,
    required this.labelText,
    this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final List<String> items;
  final String labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    String? selectedValue = controller.text.isNotEmpty && items.contains(controller.text)
        ? controller.text
        : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.w, bottom: 6.h, top: 14.h),
          child: Text(
            labelText,
            style: TextStyle(
              fontSize: 15.r,
            ),
          ),
        ),
        DropdownButtonFormField<String>(
          value: selectedValue,
          onChanged: (newValue) {
            controller.text = newValue!;
          },
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.black),
            ),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            hintText: hintText,
            alignLabelWithHint: true,
          ),
        ),
      ],
    );
  }
}
