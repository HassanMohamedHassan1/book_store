import 'package:book_store/core/Colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    super.key,
    required this.HintText,
    required this.keyboardType,
    this.errorText,
    required this.IsPassword,
  });
  final String HintText;
  final TextInputType keyboardType;
  final String? errorText;
  final bool IsPassword;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isobscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: widget.IsPassword,
        validator: (value) {
          if (value!.isEmpty) {
            return widget.errorText;
          }
          return null;
        },
        decoration: InputDecoration(
          suffixIcon: widget.IsPassword
              ? IconButton(
                  icon: isobscure
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isobscure = !isobscure;
                    });
                  },
                )
              : null,
          hintText: widget.HintText,
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
