import 'package:chapuiapp/Constant/color.dart';
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(10.0),
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.ac_unit, color: buttonColor),
                        Text(
                          'Chato',
                          style: TextStyle(color: buttonColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(30),
                          width: getProportionateScreenWidth(30),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE5E5E5),
                          ),
                          child: const Icon(Icons.camera),
                        ),
                        Container(
                          height: getProportionateScreenHeight(30),
                          width: getProportionateScreenWidth(30),
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
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
              //
              //
              ListView.builder(
                itemCount: demoChat.length,
                itemBuilder: (context, index) => CustomChatScreen(
                  demoData: demoChat[index],
                ),
              ),
            ],
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
      child: Row(
        children: [
          Container(
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenWidth(80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Image.asset(
              demoData.image,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Text(
                demoData.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                demoData.text,
                style: const TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          Column(
            children: [
              Text(demoData.time),
              Container(
                height: getProportionateScreenHeight(10),
                width: getProportionateScreenWidth(10.0),
                decoration: BoxDecoration(
                  color: buttonColor2,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: demoData.notification,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
