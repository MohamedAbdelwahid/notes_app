import 'package:flutter/material.dart';
import 'package:frist_project/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
    this.onSaved, {
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.initialValue,
  });
  final String hint;
  final int maxLines;
  final String? initialValue;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required ';
        } else {
          return null;
        }
      },
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
