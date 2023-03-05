import 'package:floating/main.dart';
import 'package:floating/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class MyAp extends StatefulWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  State<MyAp> createState() => _MyApState();
}

class _MyApState extends State<MyAp> {
  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    return Scaffold(
      body: OnBoardingScreen(
        onSkip: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        showPrevNextButton: true,
        showIndicator: true,
        backgourndColor: Colors.white,
        activeDotColor: Colors.purple,
        deactiveDotColor: Colors.grey,
        iconColor: Colors.black,
        leftIcon: Icons.arrow_circle_left_rounded,
        rightIcon: Icons.arrow_circle_right_rounded,
        iconSize: 30,
        pages: [
          OnBoardingModel(
            image: SvgPicture.asset("icons/chat.svg"),
            title: "Notes App",
            body: "By Amer Muhammed Development",
          ),
          OnBoardingModel(
            image: SvgPicture.asset("icons/chat.svg"),
            title: "4.5",
            body: "",
          ),
          OnBoardingModel(
            image: SvgPicture.asset("icons/chat.svg"),
            title: "The Smoth app",
            body: "100.100",
          ),
          OnBoardingModel(
            image: SvgPicture.asset("icons/chat.svg"),
            title: "Content Team",
            body: "24.hours",
          ),
        ],
      ),
    );
  }
}
