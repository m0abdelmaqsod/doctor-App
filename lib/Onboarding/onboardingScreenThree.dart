import 'package:flutter/material.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({super.key});

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
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
                  child: Image.asset("images/Image Onboarding screen 3.png",
                      width: 500, fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Thousands of Online Specialists",
                    style: TextStyle(
                        color: Color(0xff374151),
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    " Explore a Vast Array of Online Medical Specialists, Offering an Extensive Range of Expertise Tailored to Your Healthcare Needs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff6B7280), fontSize: 18)),
                const SizedBox(
                  height: 15,
                ),

                // ===============
                const SizedBox(
                  height: 20,
                ),
           
                // =============
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
