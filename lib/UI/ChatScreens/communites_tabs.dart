import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CommunitiesTabs extends StatelessWidget {
  const CommunitiesTabs({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/joincomm');
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
                  SizedBox(
                    width: getProportionateScreenWidth(10.0),
                  ),
                  Container(
                    height: getProportionateScreenHeight(35),
                    width: getProportionateScreenWidth(35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: const Icon(
                      Icons.more_vert,
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
            SizedBox(height: getProportionateScreenHeight(15)),
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.people),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        const Text(
                          'Got 50 coins',
                          style: TextStyle(color: buttonColor),
                        ),
                        const Text('for your first community'),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        Row(
                          children: [
                            ...List.generate(
                              5,
                              (index) => Container(
                                margin: const EdgeInsets.only(right: 4.0),
                                height: getProportionateScreenHeight(5),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                width: getProportionateScreenWidth(7),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/Group 43 (image).png', width: 120),
                ],
              ),
            ),
            //
            //
            //
            //
            const PopularCards(),
            const PopularCard2(),
          ],
        ),
      ),
    );
  }
}

class PopularCard2 extends StatelessWidget {
  const PopularCard2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> demoText = [
      'All',
      'Movies',
      'Arts',
      'Sports',
      'Crypto',
      'Finace',
      'News',
      'Health Care',
      'Science',
    ];

    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Communities by Interests',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoText.length,
                  (index) => Padding(
                    padding:
                        const EdgeInsets.only(right: 10.0, top: 5, bottom: 8),
                    child: Text(
                      demoText[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //   SizedBox(height: getProportionateScreenHeight(10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Expanded(
                          child: Image.asset(
                              'assets/images/Rectangle 22 (image) (1).png'),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Movies')),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                //
                //
                //
                //
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                            'assets/images/Rectangle 22 (image).png'),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Arts')),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                //
                //
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                            'assets/images/Rectangle 22 (image).png'),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Movies')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularCards extends StatelessWidget {
  const PopularCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'For You',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(20),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Expanded(
                          child: Image.asset(
                              'assets/images/Rectangle 22 (image).png'),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Movies')),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Expanded(
                          child: Image.asset(
                              'assets/images/Rectangle 22 (image) (1).png'),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Arts')),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                //
                //
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                    horizontal: getProportionateScreenWidth(10),
                  ),
                  width: getProportionateScreenWidth(140),
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Expanded(
                          child: Image.asset(
                              'assets/images/Rectangle 22 (image) (1).png'),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        'Stars Wars Torrent',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      const Text(
                        '14,440 Members',
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenWidth(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor,
                        ),
                        child: const Center(child: Text('Movies')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
