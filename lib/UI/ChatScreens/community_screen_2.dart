import 'package:chapuiapp/Constant/color.dart';
import 'package:chapuiapp/Constant/custom_button.dart';
import 'package:chapuiapp/Constant/size_config.dart';
import 'package:flutter/material.dart';

class CommunityScreen2 extends StatelessWidget {
  const CommunityScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Chato',
          style: TextStyle(color: buttonColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(16)),
              child: Text(
                'Pick 4 or more topics ',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //
            const MoviesChoice(),
            const SportChoice(),
            const ArtChoice(),
            //
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomButton(
              press: () {
                Navigator.of(context).pushNamed('/commtabs');
              },
              text: 'Continue',
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            const Center(
              child: Text(
                'i"ll do it later',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArtChoice extends StatelessWidget {
  const ArtChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/art.png', width: 25),
            SizedBox(width: getProportionateScreenWidth(10)),
            const Text('Arts'),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        Wrap(
          spacing: 10.0,
          children: const [
            ChoiceChip(
              label: Text('NFT'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Painting'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Drwaing'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('illustration'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Graphic Design'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
          ],
        ),
      ],
    );
  }
}

class SportChoice extends StatelessWidget {
  const SportChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/Group 54.png', width: 25),
            SizedBox(width: getProportionateScreenWidth(10)),
            const Text('Sports'),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        Wrap(
          spacing: 10.0,
          children: const [
            ChoiceChip(
              label: Text('Lebron    James'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Basket'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('NBA'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('NCAA'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Climbing'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
          ],
        ),
      ],
    );
  }
}

class MoviesChoice extends StatelessWidget {
  const MoviesChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/tv.png', width: 25),
            SizedBox(width: getProportionateScreenWidth(10)),
            const Text('Movies'),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        Wrap(
          spacing: 10.0,
          children: const [
            ChoiceChip(
              label: Text('Documentary'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('SuperHerors'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Star Warz'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Actors'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Horor'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Foriegn Films'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Mystery'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Romance'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Thriller'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
            ChoiceChip(
              label: Text('Action'),
              selected: false,
              padding: EdgeInsets.all(10),
              disabledColor: backgroundColor,
            ),
          ],
        ),
      ],
    );
  }
}
