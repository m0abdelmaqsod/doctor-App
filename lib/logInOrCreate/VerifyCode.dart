import 'package:doctorapp/logInOrCreate/createNewPassword.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final defaultPinTheme = PinTheme(
    width: 65,
    height: 65,
    textStyle: const TextStyle(
        fontSize: 20, color: Color(0xFF1E3C57), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: const Color(0xffF3F4F6),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFFA1A8B6)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                // =======
                // const SizedBox(height: 40),
                // =======
                Image.asset("images/Logo.png"),

                // =======
                const SizedBox(
                  height: 25,
                ),
                // =======

                const Text(
                  "Verify Code",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),

                // =======

                const SizedBox(
                  height: 15,
                ),

                // =======

                const Text(
                  "Enter the the code",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xff6B7280)),
                ),

                // =======

                const Text(
                  "we just sent you on your registered Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xff6B7280)),
                ),

                // =======

                const SizedBox(
                  height: 25,
                ),
                // =======

                Pinput(
                  defaultPinTheme: defaultPinTheme,
                  length: 5,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  validator: (value) {
                    return value == '22222' ? null : "Pin is incorrect";
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),

                // =======
                const SizedBox(
                  height: 25,
                ),
                // =======

                MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: const Color(0xff1C2A3A),
                  minWidth: 400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const createNewPassword()));
                  },
                  child: const Text("Verify",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),

                // =======
                const SizedBox(
                  height: 25,
                ),
                // =======

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Didn’t get the Code ?",
                      style: TextStyle(color: Color(0xff6B7280), fontSize: 18),
                    ),
                    MaterialButton(
                      child: const Text(
                        "Resend",
                        style:
                            TextStyle(color: Color(0xff3461FD), fontSize: 18),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
