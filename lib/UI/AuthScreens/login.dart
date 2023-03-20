import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/custom_social_links.dart';
import 'package:chapuiapp/Constant/custom_text_field.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

late final TextEditingController _emailController;
late final TextEditingController _passwordController;

class _LogInScreenState extends State<LogInScreen> {
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
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
                    bottom: getProportionateScreenHeight(50.0),
                    top: getProportionateScreenHeight(40.0),
                  ),
                  child: const Text(
                    'Login To\nGeneral App',
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
                      SizedBox(height: getProportionateScreenHeight(7.0)),
                      CustomTextField(
                        labelText: 'johndoe@gmail.com',
                        controller: _emailController,
                        obscureText: false,
                        enableSuggestions: true,
                        iconData: const Icon(Icons.mark_as_unread),
                        // icon: const Icon(Icons.mark_as_unread),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      const Text('Password'),
                      SizedBox(height: getProportionateScreenHeight(7.0)),
                      CustomTextField(
                        labelText: '*********',
                        controller: _passwordController,
                        obscureText: true,
                        enableSuggestions: false,
                        iconData: const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                        // icon: const Icon(Icons.visibility),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenHeight(30)),
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(20),
                        bottom: getProportionateScreenHeight(50),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  text: 'Login',
                  press: () {},
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: const Center(
                    child: Text(
                      'i"m a new user. Registeration',
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
