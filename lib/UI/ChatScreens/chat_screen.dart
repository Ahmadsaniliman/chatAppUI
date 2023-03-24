import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
    final iconList = <IconData>[
      Icons.chat,
      Icons.call,
      //   Icons.chat,
      Icons.people,
      Icons.menu,
    ];
    final textList = <String>[
      'Chat',
      'Call',
      'Communities',
      'Menu',
    ];
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            top: 0,
            left: 50,
            right: 50,
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: buttonColor),
            ),
          ),
          AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconList[index],
                      size: 24,
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        textList[index],
                        style: const TextStyle(fontSize: 7),
                      ),
                    )
                  ],
                );
              },
              activeIndex: 0,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.center,
              leftCornerRadius: 0,
              rightCornerRadius: 0,
              onTap: (index) {}),
        ],
      ),
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10.0),
          ),
          child: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                width: getProportionateScreenWidth(95.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await popUp(context);
                    },
                    child: Container(
                      height: getProportionateScreenHeight(35),
                      width: getProportionateScreenWidth(35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE5E5E5),
                      ),
                      child: const Icon(Icons.people),
                    ),
                  ),
                  //   SizedBox(
                  //     width: getProportionateScreenWidth(10.0),
                  //   ),
                  //   Container(
                  //     height: getProportionateScreenHeight(30),
                  //     width: getProportionateScreenWidth(30),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       color: const Color(0xFFE5E5E5),
                  //     ),
                  //     child: const Icon(
                  //       Icons.search,
                  //       color: Color(0xFFE5E5E5),
                  //     ),
                  //   ),
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
    return GestureDetector(
      onTap: () {},
      child: Container(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  demoData.image,
                  fit: BoxFit.contain,
                ),
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
      ),
    );
  }
}

Future popUp(BuildContext context) {
  return showDialog(
    barrierColor: backgroundColor.withOpacity(0.6),
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10),
          //   horizontal: getProportionateScreenWidth(1),
        ),
        height: getProportionateScreenHeight(400),
        width: getProportionateScreenWidth(200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/Group 43 (image).png'),
            const Text('Join a community '),
            const Text(
              'Join your first community and get\nfree 50 Viber coins!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),
            CustomButton(
              text: 'Join Now',
              press: () {
                Navigator.of(context).pushNamed('/commscreen');
              },
            ),
          ],
        ),
      ),
    ),
  );
}
