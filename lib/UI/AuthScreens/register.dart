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

late final TextEditingController _emailController;
late final TextEditingController _passwordController;

class _RegisterScreenState extends State<RegisterScreen> {
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
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15.0)),
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
                      labelText: '********',
                      controller: _emailController,
                      obscureText: true,
                      enableSuggestions: false,
                      icon: const Icon(Icons.visibility),
                    ),
                    SizedBox(height: getProportionateScreenHeight(15.0)),
                    const Text('Enter Your Location'),
                    CustomTextField(
                      labelText: 'Italy',
                      controller: _emailController,
                      obscureText: true,
                      enableSuggestions: false,
                      icon: const Icon(Icons.visibility),
                    ),
                    SizedBox(height: getProportionateScreenHeight(15.0)),
                    const Text('Enter Your Phone Number'),
                    CustomTextField(
                      labelText: '+234 9084 5647 4756',
                      controller: _emailController,
                      obscureText: true,
                      enableSuggestions: false,
                      icon: const Icon(Icons.visibility),
                    ),
                    SizedBox(height: getProportionateScreenHeight(15.0)),
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
              //
              CustomButton(
                text: 'Registeration',
                press: () {},
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
