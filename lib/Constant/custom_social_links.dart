import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CustomSocialMediaLinks extends StatelessWidget {
  const CustomSocialMediaLinks({
    super.key,
    required this.image,
    required this.color,
  });
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(60.0),
      width: getProportionateScreenWidth(70.0),
      decoration: BoxDecoration(
        color: appleColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(child: Image.asset('assets/icons/Pfad 2591.png')),
    );
  }
}
