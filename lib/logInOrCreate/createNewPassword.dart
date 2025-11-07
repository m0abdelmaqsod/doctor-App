import 'package:doctorapp/logInOrCreate/SignIn.dart';
import 'package:flutter/material.dart';

class createNewPassword extends StatefulWidget {
  const createNewPassword({super.key});

  @override
  State<createNewPassword> createState() => _createNewPasswordState();
}

class _createNewPasswordState extends State<createNewPassword> {
  final _formPass = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // =========

                Image.asset("images/Logo.png"),

                // =========

                const SizedBox(
                  height: 30,
                ),

                // =========
                const Text("Create new password",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),

                // =========

                const SizedBox(
                  height: 20,
                ),

                // =========

                const Text(
                    "Your new password must be different form previously used password",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Color(0xff6B7280))),

                // =========

                const SizedBox(
                  height: 25,
                ),

                // =========

                Form(
                  key: _formPass,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
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
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            prefixIcon: const Icon(Icons.lock_outline),
                            prefixIconColor: const Color(0xff6B7280),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                                color: Color(0xff6B7280), fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),

                      // =========

                      const SizedBox(
                        height: 25,
                      ),

                      // =========

                      TextFormField(
                        controller: _confirmPassword,
                        keyboardType: TextInputType.visiblePassword,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Fill The Password";
                          }

                          if (value != _password.text) {
                            return "Password ";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            prefixIcon: const Icon(Icons.lock_outline),
                            prefixIconColor: const Color(0xff6B7280),
                            hintText: "Confirm Password",
                            hintStyle: const TextStyle(
                                color: Color(0xff6B7280), fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    ],
                  ),
                ),

                // ==========

                const SizedBox(
                  height: 30,
                ),

                // ==========

                MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: const Color(0xff1C2A3A),
                  minWidth: 400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    if (_formPass.currentState!.validate()) {
                      // ✅ الشروط متحققة
                      // ScaffoldMessenger.of(context).showSnackBar(
                      // const SnackBar(content: Text("✅ Login Success")));
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignIn()));
                    } else {
                      // ❌ الشروط غير متحققة
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("⚠️ Please fix the errors")),
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
