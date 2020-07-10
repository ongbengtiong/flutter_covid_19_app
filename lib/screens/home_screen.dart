import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_19_app/screens/details_screen.dart';
import '../widgets/prevention_card.dart';
import '../constant.dart';
import '../widgets/info_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // fit content
          children: [
            Container(
              // height: 420,
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.03),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  InfoCard(
                    title: 'Confirmed Cases',
                    effectedNumber: 1062,
                    iconColor: Color(0xFFF9C00),
                    press: () {},
                  ),
                  InfoCard(
                    title: 'Total Deaths',
                    effectedNumber: 72,
                    iconColor: Color(0xFFF2055),
                    press: () {},
                  ),
                  InfoCard(
                    title: 'Total Recovered',
                    effectedNumber: 962,
                    iconColor: Color(0xFFFE3C2),
                    press: () {},
                  ),
                  InfoCard(
                    title: 'New Cases',
                    effectedNumber: 152,
                    iconColor: Color(0xFFF56D6),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailsScreen();
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preventions',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildPreventionCards(),
                  SizedBox(
                    height: 30,
                  ),
                  buildHelpCard(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildPreventionCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: PreventionCard(
            title: 'Wash Hands',
            imageSrc: 'assets/images/wash_hands.png',
          ),
        ),
        Expanded(
          child: PreventionCard(
            title: 'Wash Hands',
            imageSrc: 'assets/images/wear_mask.png',
          ),
        ),
        Expanded(
          child: PreventionCard(
            title: 'Clean',
            imageSrc: 'assets/images/wash_hands.png',
          ),
        ),
      ],
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF60BE93),
                Color(0xFF188D59),
              ]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Text 995 for\n Medical Help\n',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: 'If any symptoms appear',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset('assets/images/wash_hands.png'),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: Image.asset('assets/images/virus.png'),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Covid-19',
        style: TextStyle(
          color: kPrimaryColor,
        ),
      ),
      backgroundColor: kPrimaryColor.withOpacity(0.03),
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {})
      ],
    );
  }
}
