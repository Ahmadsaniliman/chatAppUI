import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CommunitiesTabs extends StatelessWidget {
  const CommunitiesTabs({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Container(
          height: getProportionateScreenHeight(100),
          width: double.infinity,
          color: Colors.green),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/Path 2.png'),
                  SizedBox(
                    width: getProportionateScreenWidth(4.0),
                  ),
                  const Text(
                    'Chato',
                    style: TextStyle(color: buttonColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: getProportionateScreenHeight(30),
                    width: getProportionateScreenWidth(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: const Icon(Icons.camera),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10.0),
                  ),
                  Container(
                    height: getProportionateScreenHeight(30),
                    width: getProportionateScreenWidth(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: whiteColor,
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(120),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset('assets/images/Group 43 (image).png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
