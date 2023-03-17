import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.obscureText,
    required this.enableSuggestions,
    required this.icon,
  });

  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final bool enableSuggestions;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12.0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: TextField(
        enableSuggestions: true,
        obscureText: false,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(icon as IconData?),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(10.0),
          ),
        ),
      ),
    );
  }
}
