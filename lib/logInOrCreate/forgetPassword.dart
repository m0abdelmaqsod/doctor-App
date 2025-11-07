import 'package:doctorapp/logInOrCreate/VerifyCode.dart';
import 'package:flutter/material.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  // =======

                  const SizedBox(height: 40),
                  // =======
                  Image.asset("images/Logo.png"),

                  // =======
                  const SizedBox(
                    height: 25,
                  ),
                  // =======

                  const Text("Forget Password?",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),

                  // =======
                  const SizedBox(
                    height: 25,
                  ),
                  // =======

                  const Text(
                      "Enter your Email, we will send you a verification code.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Color(0xff6B7280))),

                  // =======
                  const SizedBox(
                    height: 25,
                  ),
                  // =======

                  Form(
                    key: formState,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Fill The Email";
                        }

                        if (!value.endsWith("@gmail.com")) {
                          return "write email in right format";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          prefixIconColor: const Color(0xff9CA3AF),
                          hintText: "Your Email",
                          hintStyle: const TextStyle(
                              color: Color(0xff9CA3AF), fontSize: 18),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),

                  // =======
                  const SizedBox(
                    height: 25,
                  ),
                  // =======

                  MaterialButton(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    minWidth: 400,
                    color: const Color(0xff1C2A3A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Send Code",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      // if (formState.currentState!.validate()) {}
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const VerifyCode()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
