import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.press,
    required this.text,
  });

  final Function()? press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: getProportionateScreenHeight(70.0),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: buttonColor),
        child: Text(text),
      ),
    );
  }
}
