import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> iconAndName = [
      {"images": "assets/images/tv.png", "text": "Movies"},
      {"images": "assets/images/economics.png", "text": "Finance"},
      {"images": "assets/images/Group 54.png", "text": "Sports"},
      {"images": "assets/images/art.png", "text": "Arts"},
      {"images": "assets/images/crypto.png", "text": "Crypto"},
      {"images": "assets/images/classical-music.png", "text": "Music"},
      {"images": "assets/images/finger-food.png", "text": "Food"},
      {"images": "assets/images/video-console.png", "text": "Game"},
      {"images": "assets/images/processor.png", "text": "Tech"},
      {"images": "assets/images/news.png", "text": "News"},
      {"images": "assets/images/healthcare.png", "text": "Health"},
      {"images": "assets/images/science-fiction.png", "text": "Science"},
    ];
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Chato',
          style: TextStyle(color: buttonColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(20)),
              child: Center(
                child: Text(
                  'Pick 3 or more interests ',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 450,
              child: GridView.builder(
                itemCount: iconAndName.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(90),
                      width: getProportionateScreenWidth(90),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: backgroundColor),
                      child: Image.asset(
                        iconAndName[index]["images"],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(1.5)),
                    Text(
                      iconAndName[index]["text"],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            CustomButton(
              press: () {
                Navigator.of(context).pushNamed('/commscreen2');
              },
              text: 'Continue',
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            const Text(
              'i"ll do it later',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
