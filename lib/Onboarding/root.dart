import 'package:doctorapp/Onboarding/OnboardingScreenOne.dart';
import 'package:doctorapp/Onboarding/onboardingScreenThree.dart';
import 'package:doctorapp/Onboarding/onboardingScreenTwo.dart';
import 'package:doctorapp/homeScreen.dart';
import 'package:doctorapp/logInOrCreate/FillYourProfile.dart';
import 'package:doctorapp/logInOrCreate/SignIn.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController _controller = PageController();
  List<Widget> screans = [
    const OnboardingScreenOne(),
    const OnboardingScreenTwo(),
    const OnboardingScreenThree(),
    SignIn()
  ];

  int selectionindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        onPageChanged: (v) {},
        children: screans,
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: selectionindex > 3
            ? SizedBox.shrink()
            : Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(330, 60),
                          backgroundColor: const Color(0xff1C2A3A)),
                      child: const Text("Next",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      onPressed: () {
                        setState(() {
                          _controller.jumpToPage(selectionindex++);
                        });
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                  )
                ],
              ),
      ),
    );
  }
}
