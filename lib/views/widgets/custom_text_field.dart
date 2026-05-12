import 'package:flutter/material.dart';
import 'package:frist_project/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key ,  this.maxLines =1  , required this.hint});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kprimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names, strict_top_level_inference
  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
