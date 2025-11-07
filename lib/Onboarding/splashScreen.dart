import 'package:doctorapp/Onboarding/OnboardingScreenOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreenOne(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: 450,
              child: Image.asset(
                "images/splash screen.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: SvgPicture.asset("images/icon SVG/Logo.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
