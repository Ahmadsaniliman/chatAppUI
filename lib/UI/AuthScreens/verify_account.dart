import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  late FocusNode pin6FocusNode;
  late FocusNode pin7FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();

    super.dispose();
  }

  void nextField({
    required String value,
    required FocusNode focusNode,
  }) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            top: getProportionateScreenHeight(30.0),
            bottom: getProportionateScreenHeight(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(30.0),
                  top: getProportionateScreenHeight(30.0),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Enter Verification Code',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    const Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et.',
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ],
                ),
              ),
              //   SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(60),
                        child: TextFormField(
                          obscureText: true,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin2FocusNode);
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(60),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: pin2FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin3FocusNode);
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(60),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: pin3FocusNode,
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin4FocusNode);
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(60),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: pin4FocusNode,
                          onChanged: (value) {
                            pin4FocusNode.unfocus();
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              //   borderSide: const BorderSide(color: thirdColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              SizedBox(height: getProportionateScreenHeight(35)),
              CustomButton(
                text: 'Confirm',
                press: () {
                  Navigator.of(context).pushNamed('/chatscreen');
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Center(
                  child: Text(
                    'Code not received?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black),
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
