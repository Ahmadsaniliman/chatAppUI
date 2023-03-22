import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class JoinCommunity extends StatelessWidget {
  const JoinCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
                      width: getProportionateScreenWidth(99.0),
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
              //
              //
              //
              //
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Expanded(
                child: SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/3d-render-stack-bitcoins-with-rocket-moon-defi-crypto-concept-investment-management (image) (3).png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: getProportionateScreenHeight(50)),
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: getProportionateScreenHeight(250),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        width: getProportionateScreenWidth(300),
                        child:
                            const Text("""Quickprimetrade LTD is an\nAustralian 
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
