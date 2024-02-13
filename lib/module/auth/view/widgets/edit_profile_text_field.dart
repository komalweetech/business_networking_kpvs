// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileTextField extends StatelessWidget {
  const EditProfileTextField({
    Key? key,
    required this.controller,
    this.prefix,
    required this.labelText,
    this.enabled,
    this.padding,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.readOnly,
    this.onTap,
    this.suffix,
    this.line,
    this.autofocus,
    this.maxLength,
    this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;
  final String labelText;
  final String? hintText;
  final EdgeInsetsGeometry? padding;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final VoidCallback? onTap;
  final int? line;
  final bool? enabled;
  final bool? autofocus;
  final int? maxLength;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.w, bottom: 6.h, top: 14.h),
          child: Text(
            labelText,
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
        ),
        TextFormField(
          readOnly: readOnly ?? false,
          autofocus: autofocus ?? false,
          onTap: onTap,
          controller: controller,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          maxLines: line,
          textAlignVertical: TextAlignVertical.center,
          enabled: enabled,
          maxLength: maxLength,
          style: TextStyle(
            color: Color.fromRGBO(159, 159, 159, 1),
          ),
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.black)),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            prefixIcon: prefix,
            suffixIcon: suffix,
            hintText: hintText,
            alignLabelWithHint: true,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
