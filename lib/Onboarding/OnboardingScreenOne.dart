import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: Image.asset("images/Image Onboarding screen 1.png",
                      width: 500, fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Meet Doctors Online",
                    style: TextStyle(
                        color: Color(0xff374151),
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff6B7280), fontSize: 18)),
                const SizedBox(
                  height: 15,
                ),


          
              ],
            ),
          ),
        ],
      ),
    );
  }
}
