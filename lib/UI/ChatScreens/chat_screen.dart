import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:chapuiapp/Model/model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: whiteColor,
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            // top: getProportionateScreenHeight(10.0),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                  demoChat.length,
                  (index) => CustomChatScreen(
                    demoData: demoChat[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomChatScreen extends StatelessWidget {
  const CustomChatScreen({
    super.key,
    required this.demoData,
  });

  final DemoData demoData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(7),
      ),
      width: double.infinity,
      height: getProportionateScreenHeight(95),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getProportionateScreenHeight(67),
            width: getProportionateScreenWidth(58),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              // color: Colors.lightBlue
            ),
            child: Image.asset(
              demoData.image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      demoData.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      demoData.text,
                      style: const TextStyle(fontSize: 11.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(demoData.time),
                    Container(
                      height: getProportionateScreenHeight(25),
                      width: getProportionateScreenWidth(25),
                      decoration: BoxDecoration(
                        // color: buttonColor2,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: demoData.notification,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future popUp(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10),
          horizontal: getProportionateScreenWidth(15),
        ),
        height: getProportionateScreenHeight(250),
        width: getProportionateScreenWidth(200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/Group 43 (image).png'),
            const Text('Join a community '),
            const Text(
                'Join your first community and get\nfree 50 Viber coins!'),
            CustomButton(
              text: 'Join Now',
              press: () {},
            ),
          ],
        ),
      ),
    ),
  );
}
