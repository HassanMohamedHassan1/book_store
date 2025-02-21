import 'package:book_store/core/Colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.HintText,
  });
  final String HintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      hintText: HintText,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
    ));
  }
}
