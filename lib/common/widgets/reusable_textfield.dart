import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    super.key,
    this.controller,
    required this.lable,
    required this.hintText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.words,
  });
  final String lable;
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      maxLines: maxLines,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: hintText,
        labelText: lable,
        alignLabelWithHint: true,
      ),
    );
  }
}
