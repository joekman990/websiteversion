import 'package:flutter/material.dart';

import 'package:strike_the_match/theme/pallete.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.maxLines = 2,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final int maxLines;
  final Widget? icon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      child: TextFormField(
        minLines: 1,
        maxLines: maxLines,
        // expands:
        controller: controller,
        style: TextStyle(fontSize: 12, color: Palette.darkGrey),
        decoration: InputDecoration(
          prefixIcon: icon,
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(
            minHeight: 15,
            minWidth: 25,
          ),
          prefixIconConstraints: BoxConstraints(
            minHeight: 15,
            minWidth: 25,
          ),
          // icon: icon,
          border: OutlineInputBorder(),
          label: Text(labelText),
          hintText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        ),
      ),
    );
  }
}
