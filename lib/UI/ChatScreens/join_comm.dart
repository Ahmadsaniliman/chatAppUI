import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class JoinCommunity extends StatelessWidget {
  const JoinCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.all(15.0),
        height: getProportionateScreenHeight(160),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Crypto Winner',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    const Text(
                      '4,412 Members',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(120.0),
                ),
                Container(
                  height: getProportionateScreenHeight(35),
                  width: getProportionateScreenWidth(60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: backgroundColor,
                  ),
                  child: const Center(child: Text('Crypto')),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/joincommchat');
              },
              child: Container(
                height: getProportionateScreenHeight(50.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: buttonColor),
                child: const Center(
                  child: Text(
                    'Join Community',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      height: getProportionateScreenHeight(40),
                      width: getProportionateScreenWidth(40),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 10,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10.0),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Crypto Winner',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        const Text(
                          '4,412 Members',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(89.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: getProportionateScreenHeight(35),
                          width: getProportionateScreenWidth(35),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFE5E5E5),
                          ),
                          child: const Icon(Icons.people),
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
              //
              //
              //
              //
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/3d-render-stack-bitcoins-with-rocket-moon-defi-crypto-concept-investment-management (image) (3).png',
                        ),
                        fit: BoxFit.cover),
                  ),
                  height: getProportionateScreenHeight(700),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/images/Rectangle 1 (image) (1).png',
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            height: getProportionateScreenHeight(250),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            width: getProportionateScreenWidth(290),
                            child: const Text(
                                """Quickprimetrade LTD is an\nAustralian 
based investment company that 
trades Cryptocurrency and other 
Natural resources, including 
agriculture products . This company 
started functioning since 2017\n.With 
a minimum investment of 50\$ you 
gain a profit of 10% within 3days.
www.quickprimetrade.com."""),
                          ),
                        ],
                      ),
                      //
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/images/Rectangle 1 (image) (1).png',
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            height: getProportionateScreenHeight(250),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            width: getProportionateScreenWidth(290),
                            child: const Text(
                                """Congratulations .....Our company needs (Male Female) 
working from home.
1.  Sign up Fee : \$0
2. Daily Earnings : \$ 1,000
3. Weekly Earnings: \$6,000
4. Monthly Earnings: \$ 37,000
5.  Yearly Earnings: \$ 89,000
6.  INBOX ME DIRECTLY OR ASK 
Me How TO PROCEED
https://wa.me/message/
BQE5KVLOHNOGE1
👇👇👇👇👇👇👇."""),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
