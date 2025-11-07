import 'package:doctorapp/Onboarding/onboardingScreenTwo.dart';
import 'package:doctorapp/logInOrCreate/SignIn.dart';
import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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

                  //===============================

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(330, 60),
                          backgroundColor: const Color(0xff1C2A3A)),
                      child: const Text("Next",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const OnboardingScreenTwo()));
                      },
                    ),
                  ),

                  // ===============
                  const SizedBox(
                    height: 20,
                  ),
                  // ===============

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: Color(0xff1C2A3A),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(Icons.circle, size: 10, color: Color(0xff9B9B9B)),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(Icons.circle, size: 10, color: Color(0xff9B9B9B)),
                    ],
                  ),

                  // =============
                  const SizedBox(
                    height: 8,
                  ),

                  MaterialButton(
                    child: const Text(
                      "Skip",
                      style: TextStyle(fontSize: 20, color: Color(0xff6B7280)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignIn()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
