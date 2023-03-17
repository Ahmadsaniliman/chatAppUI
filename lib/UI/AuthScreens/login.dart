import 'package:chatappui/Constant/color.dart';
import 'package:chatappui/Constant/custom_button.dart';
import 'package:chatappui/Constant/custom_social_links.dart';
import 'package:chatappui/Constant/custom_text_field.dart';
import 'package:chatappui/Constant/size_config.dart';
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
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: getProportionateScreenHeight(30.0)),
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
                      CustomTextField(
                        labelText: 'johndoe@gmail.com',
                        controller: _emailController,
                        obscureText: false,
                        enableSuggestions: true,
                        icon: const Icon(Icons.mark_as_unread),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      const Text('Password'),
                      CustomTextField(
                        labelText: '*********',
                        controller: _passwordController,
                        obscureText: true,
                        enableSuggestions: false,
                        icon: const Icon(Icons.visibility),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(5),
                          width: getProportionateScreenWidth(100.0),
                          color: const Color(0xFF171930),
                        ),
                        const Text('Or'),
                        Container(
                          height: getProportionateScreenHeight(5),
                          width: getProportionateScreenWidth(100.0),
                          color: const Color(0xFF171930),
                        ),
                      ],
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
                  text: 'Login',
                  press: () {},
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'i"m a new user. Registeration',
                    style: TextStyle(decoration: TextDecoration.underline),
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
