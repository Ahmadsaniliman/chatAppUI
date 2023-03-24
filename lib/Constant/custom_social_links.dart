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
      height: getProportionateScreenHeight(50.0),
      width: getProportionateScreenWidth(100.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(child: Image.asset(image)),
    );
  }
}
