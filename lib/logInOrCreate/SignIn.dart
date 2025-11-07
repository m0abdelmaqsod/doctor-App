import 'package:doctorapp/homeScreen.dart';
import 'package:doctorapp/logInOrCreate/SignUp.dart';
import 'package:doctorapp/logInOrCreate/forgetPassword.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // void _update() {
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   _email.addListener(_update);
  //   _password.addListener(_update);
  //   super.initState();
  // }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              // =======
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  // =======
                  Image.asset("images/Logo.png"),
                  // =======
                  const SizedBox(height: 20),
                  // =======
                  const Text(
                    "Hi, Welcome Back !",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  // =======
                  const SizedBox(
                    height: 10,
                  ),
                  // =======
                  const Text(
                    "Hope you’re doing fine.",
                    style: TextStyle(fontSize: 18, color: Color(0xff6B7280)),
                  ),

                  // =======
                  const SizedBox(
                    height: 20,
                  ),
                  // =======

                  Form(
                      key: _formkey,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      child: Column(
                        children: [
                          TextFormField(
                              controller: _email,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Fill The Email";
                                }

                                if (!value.endsWith('@gmail.com')) {
                                  return "write email in right format";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email_outlined),
                                prefixIconColor: const Color(0xff9CA3AF),
                                hintText: "Your Email",
                                hintStyle: const TextStyle(
                                    color: Color(0xff9CA3AF), fontSize: 18),
                                filled: true,
                                fillColor: const Color(0xFFF1F3F5),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              )),

                          // ======
                          const SizedBox(
                            height: 20,
                          ),
                          // ======

                          TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: _password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Fill The Password";
                                }

                                if (value.length < 8) {
                                  return "Password Must Be 8 Numbers";
                                }

                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_outline),
                                prefixIconColor: const Color(0xff9CA3AF),
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                    color: Color(0xff9CA3AF), fontSize: 18),
                                filled: true,
                                fillColor: const Color(0xFFF1F3F5),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              )),
                        ],
                      )),

                  // ======
                  const SizedBox(
                    height: 20,
                  ),
                  // ======

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1C2A3A),
                          minimumSize: const Size(400, 60)),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));

                        // ======= && ======= //
                        if (_formkey.currentState!.validate()) {
                          // ✅ الشروط متحققة
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("✅ Login Success")),
                          );
                        } else {
                          // ❌ الشروط غير متحققة
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("⚠️ Please fix the errors")),
                          );
                        }

                        // print(_email.text.replaceAll(" ", ""));
                        print(_password.text.replaceAll(" ", ""));
                      }),

                  // ======
                  const SizedBox(
                    height: 20,
                  ),
                  // ======

                  // ======
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: const Color(0xFFAFB1B4),
                        width: 150,
                        height: 1,
                      ),
                      const Text(
                        "or",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        color: const Color(0xFFAFB1B4),
                        width: 150,
                        height: 1,
                      ),
                    ],
                  ),

                  // ======
                  const SizedBox(
                    height: 20,
                  ),
                  // ======

                  // ======
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/google.png",
                            width: 25, height: 25, fit: BoxFit.cover),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Sign In with Google",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),

                  // ======

                  const SizedBox(
                    height: 15,
                  ),

                  // ======

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/facebook.png",
                            width: 25, height: 25, fit: BoxFit.cover),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Sign In with Facebook",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),

                  // ======

                  const SizedBox(
                    height: 15,
                  ),

                  // ======

                  MaterialButton(
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(color: Color(0xff1C64F2), fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const forgetPassword(),
                      ));
                    },
                  ),
                  // ======

                  // ======
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account yet?",
                          style: TextStyle(
                              color: Color(0xff6B7280), fontSize: 17)),
                      MaterialButton(
                        child: const Text(
                          " Sign up",
                          style:
                              TextStyle(color: Color(0xff1C64F2), fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  // ======
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
