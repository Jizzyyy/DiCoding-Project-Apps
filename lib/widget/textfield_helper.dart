// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/colors_app.dart';
import '../config/font_family.dart';

class TextFieldHelper extends StatelessWidget {
  TextFieldHelper({
    required this.hintText,
    required this.borderRadius,
    this.prefixIcon,
    this.fillColor,
    this.borderSide,
    this.labelText,
    this.textStyle,
    this.filled,
    this.inputFormatter,
    this.controller,
    this.validator,
    Key? key,
  }) : super(key: key);
  String hintText;
  double borderRadius;
  Icon? prefixIcon;
  Color? fillColor;
  BorderSide? borderSide;
  String? labelText;
  TextStyle? textStyle;
  final List<TextInputFormatter>? inputFormatter;
  bool? filled;
  TextEditingController? controller;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: borderSide ?? BorderSide.none,
        ),
        hintText: hintText,
        labelText: labelText,
        fillColor: fillColor ?? ColorsApp.inputgrey,
        filled: filled ?? true,
      ),
      inputFormatters: inputFormatter,
      validator: validator,
      controller: controller,
      style: textStyle ??
          TextStyle(
            fontSize: 17.sp,
            color: Colors.black,
            fontFamily: FontFamily.regular,
          ),
    );
  }
}
