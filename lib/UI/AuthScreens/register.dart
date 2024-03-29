import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/custom_social_links.dart';
import 'package:chapuiapp/Constant/custom_text_field.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _locationController;
  late final TextEditingController _numberController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _locationController = TextEditingController();
    _numberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _locationController.dispose();
    _numberController.dispose();
    super.dispose();
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: getProportionateScreenHeight(20.0),
                    top: getProportionateScreenHeight(20.0),
                  ),
                  child: const Text(
                    'Account\nRegisteration',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email'),
                      SizedBox(height: getProportionateScreenHeight(5.0)),
                      CustomTextField(
                        labelText: 'johndoe@gmail.com',
                        controller: _emailController,
                        obscureText: false,
                        enableSuggestions: true,
                        iconData: const Icon(Icons.mark_as_unread),
                        //   icon: const Icon(Icons.mark_as_unread),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      const Text('Password'),
                      SizedBox(height: getProportionateScreenHeight(5.0)),
                      CustomTextField(
                        labelText: '********',
                        controller: _passwordController,
                        obscureText: true,
                        enableSuggestions: false,
                        iconData: const Icon(Icons.visibility_off),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      const Text('Enter Your Location'),
                      SizedBox(height: getProportionateScreenHeight(5.0)),
                      CustomTextField(
                        labelText: 'Italy',
                        controller: _locationController,
                        obscureText: true,
                        enableSuggestions: false,
                        // iconData: const Icon(Icons.visibility),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      const Text('Enter Your Phone Number'),
                      SizedBox(height: getProportionateScreenHeight(5.0)),
                      CustomTextField(
                        labelText: '+234 9084 5647 4756',
                        controller: _numberController,
                        obscureText: true,
                        enableSuggestions: false,
                        // iconData: const Icon(Icons.visibility),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(10)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: getProportionateScreenHeight(1),
                              width: getProportionateScreenWidth(100.0),
                              color: const Color(0xFF171930),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(10)),
                            child: const Text('Or'),
                          ),
                          Expanded(
                            child: Container(
                              height: getProportionateScreenHeight(1),
                              width: getProportionateScreenWidth(100.0),
                              color: const Color(0xFF171930),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomSocialMediaLinks(
                          image: 'assets/icons/Pfad 2591.png',
                          color: appleColor,
                        ),
                        CustomSocialMediaLinks(
                          image: 'assets/icons/Pfad 2593.png',
                          color: facebookColor,
                        ),
                        CustomSocialMediaLinks(
                          image: 'assets/icons/Pfad 2594.png',
                          color: twitterColor,
                        ),
                      ],
                    ),
                    //
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  text: 'Registeration',
                  press: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Center(
                    child: Text(
                      'Already have an account? Login',
                    ),
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
