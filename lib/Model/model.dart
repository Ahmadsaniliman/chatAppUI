import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class DemoData {
  DemoData({
    required this.image,
    required this.title,
    required this.time,
    this.notification,
    required this.text,
  });
  final String image, title, time, text;
  final Widget? notification;
}

final List<DemoData> demoChat = [
  DemoData(
    image: 'assets/images/Rectangle 1 (image).png',
    title: 'Connor Frazier',
    time: '7:11 PM',
    notification: Container(
      height: getProportionateScreenHeight(20),
      width: getProportionateScreenWidth(20.0),
      decoration: BoxDecoration(
        color: buttonColor2,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Center(
        child: Text(
          '16',
          style: TextStyle(color: whiteColor),
        ),
      ),
    ),
    text: 'What kind of music do you like and\nwhat app do you use? ',
  ),
  DemoData(
    image: 'assets/images/Rectangle 1 (image) (1).png',
    title: 'Laura Levy',
    time: '7:11 PM',
    notification: Container(
      height: getProportionateScreenHeight(20),
      width: getProportionateScreenWidth(20.0),
      decoration: BoxDecoration(
        color: buttonColor2,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Center(
        child: Text(
          '2',
          style: TextStyle(color: whiteColor),
        ),
      ),
    ),
    text: 'Hi Tina.\nHow"s your night going?',
  ),
  DemoData(
    image: 'assets/images/Rectangle 1 (image) (2).png',
    title: 'Ellen Lambert',
    time: '7:11 PM',
    // notification: Container(
    //   height: getProportionateScreenHeight(20),
    //   width: getProportionateScreenWidth(20.0),
    //   decoration: BoxDecoration(
    //     color: buttonColor2,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       '2',
    //       style: TextStyle(color: whiteColor),
    //     ),
    //   ),
    // ),
    text: 'Cool!😊 let"s meet at 16:00\nnear the shopping mall',
  ),
  DemoData(
    image: 'assets/images/Rectangle 1 (image) (3).png',
    title: 'Timothy Steele',
    time: '7:11 PM',
    // notification: Container(
    //   height: getProportionateScreenHeight(20),
    //   width: getProportionateScreenWidth(20.0),
    //   decoration: BoxDecoration(
    //     color: buttonColor2,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       '2',
    //       style: TextStyle(color: whiteColor),
    //     ),
    //   ),
    // ),
    text: 'Yeas sure, but this is not\nsomething I like though',
  ),
  DemoData(
    image: 'assets/images/Rectangle 1 (image) (4).png',
    title: 'Lou Quinn',
    time: '7:11 PM',
    // notification: Container(
    //   height: getProportionateScreenHeight(20),
    //   width: getProportionateScreenWidth(20.0),
    //   decoration: BoxDecoration(
    //     color: buttonColor2,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       '2',
    //       style: TextStyle(color: whiteColor),
    //     ),
    //   ),
    // ),
    text: 'Congrats! after all this searches\nyou finally made it!',
  ),
  DemoData(
    image: 'assets/images/Rectangle 1 (image) (5).png',
    title: 'Josephine Gordon',
    time: '7:11 PM',
    // notification: Container(
    //   height: getProportionateScreenHeight(20),
    //   width: getProportionateScreenWidth(20.0),
    //   decoration: BoxDecoration(
    //     color: buttonColor2,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       '2',
    //       style: TextStyle(color: whiteColor),
    //     ),
    //   ),
    // ),
    text: 'I"m so tired of this day to much\nwork to do!',
  ),
  DemoData(
    image: 'assets/images/Path 7.png',
    title: 'My Notes',
    time: '7:11 PM',
    // notification: Container(
    //   height: getProportionateScreenHeight(20),
    //   width: getProportionateScreenWidth(20.0),
    //   decoration: BoxDecoration(
    //     color: buttonColor2,
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child: const Center(
    //     child: Text(
    //       '2',
    //       style: TextStyle(color: whiteColor),
    //     ),
    //   ),
    // ),
    text: 'Do not forget to take the dog\nout on Thursday night',
  ),
];
