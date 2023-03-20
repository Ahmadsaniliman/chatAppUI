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
    required this.iconData,
  });

  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final bool enableSuggestions;
  final Widget iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(7.0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2.0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: TextField(
        enableSuggestions: true,
        obscureText: false,
        controller: controller,
        decoration: InputDecoration(
          hintText: labelText,
          suffixIcon: iconData,
          border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(20.0),
              horizontal: getProportionateScreenWidth(20.0),
            ),
        ),
      ),
    );
  }
}
