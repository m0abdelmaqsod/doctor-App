import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),

                    // ========= && ========= //
                    const SizedBox(
                      height: 30,
                    ),
                    // ========= && ========= //

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(200),
                          child: Image.asset(
                            "images/image Doctor/Image (4).png",
                            width: 200,
                            height: 200,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 15,
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

                    // ========= && ========= //
                    const SizedBox(
                      height: 20,
                    ),
                    // ========= && ========= //

                    const Text(
                      "Michael Jordan",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),

                    // ========= && ========= //
                    const SizedBox(
                      height: 5,
                    ),
                    // ========= && ========= //

                    Text(
                      "+123 45678901",
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    ),
                  ],
                ),

// ========= && ========= //
                const SizedBox(
                  height: 10,
                ),
                // ========= && ========= //

                Column(
                  children: [
                    // ========= Edit Profile ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("images/icon SVG/Profile.svg",
                                    width: 25, color: Colors.black),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Favorite ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "images/icon SVG/heartOutlin.svg",
                                    width: 25,
                                    color: Colors.black),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Favorite",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Notifications ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset(
                                //     "images/icon SVG/heartOutlin.svg",
                                //     width: 25,
                                //     color: Colors.black),
                                const Icon(Icons.notifications_none_rounded),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Settings ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset(
                                //     "images/icon SVG/heartOutlin.svg",
                                //     width: 25,
                                //     color: Colors.black),
                                const Icon(Icons.settings),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Settings",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Help And Support ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset(
                                //     "images/icon SVG/heartOutlin.svg",
                                //     width: 25,
                                //     color: Colors.black),
                                const Icon(Icons.contact_support_outlined),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Help And Support",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Terms and Conditions ========= //
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 0.5, color: Colors.grey))),
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset(
                                //     "images/icon SVG/heartOutlin.svg",
                                //     width: 25,
                                //     color: Colors.black),
                                const Icon(Icons.admin_panel_settings),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Terms and Conditions",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),

                    // ========= Log Out ========= //
                    Container(
                      child: MaterialButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset(
                                //     "images/icon SVG/heartOutlin.svg",
                                //     width: 25,
                                //     color: Colors.black),
                                const Icon(Icons.logout_rounded),

                                // ========= && ========= //
                                const SizedBox(
                                  width: 25,
                                ),
                                // ========= && ========= //

                                Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 18, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
