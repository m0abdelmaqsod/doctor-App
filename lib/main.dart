import 'package:doctorapp/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatefulWidget {
  const DoctorApp({super.key});

  @override
  State<DoctorApp> createState() => _DoctorAppState();
}

class _DoctorAppState extends State<DoctorApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      home:
          // SplashScreen(),
          // OnboardingScreenOne(),
          // OnboardingScreenTwo(),
          // OnboardingScreenThree(),
          // SignIn(),
          // SignUp(),
          // FillYourProfile(),
          // forgetPassword(),
          // VerifyCode(),
          // createNewPassword(),
          HomeScreen(),
      // LocationMap(),
      // SearchAllDoctors(),
      // DoctorDetails(),
      // BookAppointment(),
      // MyBookings(),
      // Favorite(),
      // ProfileUser(),
      // Notifications()
    );
  }
}
