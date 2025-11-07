import 'package:doctorapp/logInOrCreate/SignIn.dart';
import 'package:flutter/material.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({super.key});

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  List<String> itemList = [" Male", " Female"];

  final _FormProfile = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _NickName = TextEditingController();
  final TextEditingController _email = TextEditingController();

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        // backgroundColor: Colors.red,
        title: const Text(
          "Fill Your Profile",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // ===========

                // ===========
                Stack(
                  // alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                        child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(200),
                      child: Image.asset(
                        "images/image Doctor/Image (4).png",
                        width: 230,
                        height: 230,
                        fit: BoxFit.contain,
                      ),
                    )),
                    Positioned(
                      right: -10,
                      bottom: 45,
                      child: MaterialButton(
                        minWidth: 30,
                        color: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),

                // ==========

                const SizedBox(
                  height: 15,
                ),

                // ==========
                Form(
                    key: _FormProfile,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Fill The name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: " Michael Jordan",
                            hintStyle: const TextStyle(
                                fontSize: 18, color: Color(0xFF757B85)),
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),

                        // ==========
                        const SizedBox(
                          height: 15,
                        ),
                        // ==========

                        TextFormField(
                          decoration: InputDecoration(
                            hintText: " Nickname",
                            hintStyle: const TextStyle(
                                fontSize: 18, color: Color(0xFF757B85)),
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),

                        // ==========
                        const SizedBox(
                          height: 15,
                        ),
                        // ==========

                        TextFormField(
                          decoration: InputDecoration(
                            hintText: " name@example.com",
                            hintStyle: const TextStyle(
                                fontSize: 18, color: Color(0xFF757B85)),
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                        // ==========
                        const SizedBox(
                          height: 15,
                        ),
                        // ==========

                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.date_range_outlined),
                            prefixIconColor: const Color(0xFF757B85),
                            hintText: " Date of Birth",
                            hintStyle: const TextStyle(
                                fontSize: 18, color: Color(0xFF757B85)),
                            filled: true,
                            fillColor: const Color(0xFFF4F8FC),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),

                        // ==========

                        const SizedBox(
                          height: 15,
                        ),
                        // ==========

                        // ==========
                        DropdownButtonFormField(
                          hint: const Text(' Gender'),
                          value: selectedValue,
                          items: itemList
                              .map((item) => DropdownMenuItem(
                                  value: item, child: Text(item)))
                              .toList(),
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              filled: true,
                              fillColor: const Color(0xFFF4F8FC)),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 25,
                          iconEnabledColor: const Color(0xFF757B85),
                          style: const TextStyle(
                              color: Color(0xFF757B85), fontSize: 18),
                          dropdownColor: const Color(0xFFF4F8FC),
                        ),
                      ],
                    )),

                // ==========

                const SizedBox(
                  height: 20,
                ),

                // ==========
                MaterialButton(
                  minWidth: 400,
                  color: const Color(0xff1C2A3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignIn()));
                  },
                ),
                // ==========
              ],
            ),
          )
        ],
      ),
    );
  }
}
