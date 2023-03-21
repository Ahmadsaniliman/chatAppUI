import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        elevation: 0,
        // centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            Text(
              'Pick 3 or more interests ',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(24),
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Container(
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  child: Image.asset('assets/images/tv.png'),
                ),
                SizedBox(height: getProportionateScreenHeight(5)),
                const Text('Movies'),
              ],
            ),
            CustomButton(
              press: () {},
              text: 'Continue',
            ),
            const Text('i"ll do it later'),
          ],
        ),
      ),
    );
  }
}
