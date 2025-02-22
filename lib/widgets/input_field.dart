import 'package:book_store/core/Colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.HintText,
    required this.keyboardType,
    this.obscureText ,
    this.Icontype, this.errorText,
  });
  final String HintText;
  final TextInputType keyboardType;
  final bool? obscureText;
  final IconButton? Icontype;
  final String? errorText;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        validator: (value) {
          if (value!.isEmpty) {
            return errorText;
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: Icontype,
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
