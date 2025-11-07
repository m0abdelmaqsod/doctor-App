import 'package:doctorapp/logInOrCreate/FillYourProfile.dart';
import 'package:doctorapp/logInOrCreate/SignIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _Formkry = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset("images/Logo.png"),
                // ==========
                const SizedBox(height: 20),
                // ==========
                const Text("Create Account",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                // ==========
                const SizedBox(height: 10),
                // ==========
                const Text(
                  "We are here to help you!",
                  style: TextStyle(color: Color(0xff6B7280), fontSize: 16),
                ),

                Form(
                  key: _Formkry,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      // ======
                      const SizedBox(
                        height: 30,
                      ),

                      // ======

                      TextFormField(
                        controller: _name,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill The name";
                          }

                          if (value.length < 2) {
                            return "name must consist of more than 2 numbers";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Your Name",
                          prefixIcon: const Icon(Icons.person_outlined),
                          hintStyle: const TextStyle(
                              color: Color(0xff9CA3AF), fontSize: 18),
                          prefixIconColor: const Color(0xff9CA3AF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
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
                          hintText: "Your Email",
                          prefixIcon: const Icon(Icons.mail_outline),
                          hintStyle: const TextStyle(
                              color: Color(0xff9CA3AF), fontSize: 18),
                          prefixIconColor: const Color(0xff9CA3AF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      TextFormField(
                        controller: _password,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill The password";
                          }

                          if (value.length < 8) {
                            return "Password Must Be 8 Numbers";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintStyle: const TextStyle(
                              color: Color(0xff9CA3AF), fontSize: 18),
                          prefixIconColor: const Color(0xff9CA3AF),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        obscureText: true,
                      ),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1C2A3A),
                            minimumSize: const Size(400, 60)),
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          if (_Formkry.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("✅ Login Success")));

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FillYourProfile()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("⚠️ Please fix the errorss")));
                          }
                        },
                      ),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: const Color(0xFFAFB1B4),
                            // color: Color(0xffE5E7EB),
                            height: 1,
                            width: 150,
                          ),
                          const Text(
                            "or",
                            style: TextStyle(fontSize: 23),
                          ),
                          Container(
                            color: const Color(0xFFAFB1B4),
                            height: 1,
                            width: 150,
                          ),
                        ],
                      ),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(400, 60)),
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/icons/google.png',
                                    width: 25, height: 25, fit: BoxFit.cover),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Continue with Google",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ))
                              ])),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(400, 60)),
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/icons/facebook.png',
                                    width: 25, height: 25, fit: BoxFit.cover),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Continue with Facebook",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ))
                              ])),

                      // ======

                      const SizedBox(
                        height: 15,
                      ),

                      // ======

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Do you have an account ?",
                              style: TextStyle(
                                  color: Color(0xff6B7280), fontSize: 17)),
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ));
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color(0xff1C64F2), fontSize: 17),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
