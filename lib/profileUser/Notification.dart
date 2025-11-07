import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // ======= && ======= //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "TODAY",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Mark all as read",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),

                // ======= && ======= //

                const SizedBox(
                  height: 20,
                ),

                // ======= && ======= //

                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "images/icons/calendar-tick.png",
                          width: 30,
                        ),
                      ),

                      // ======= && ======= //
                      const SizedBox(
                        width: 20,
                      ),
                      // ======= && ======= //

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Appointment Success",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("1h",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey[700])),
                              ],
                            ),

                            // ======= && ======= //
                            const SizedBox(
                              height: 5,
                            ),
                            // ======= && ======= //

                            Text(
                              "You have successfully cancelled your appointment with Dr, David Patel.",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ======= && ======= //

                const SizedBox(
                  height: 30,
                ),

                // ======= && ======= //

                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xffFDE8E8),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "images/icons/calendar-remove.png",
                          width: 30,
                        ),
                      ),

                      // ======= && ======= //
                      const SizedBox(
                        width: 20,
                      ),
                      // ======= && ======= //

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Appointment Cancelled",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("2h",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey[700])),
                              ],
                            ),

                            // ======= && ======= //
                            const SizedBox(
                              height: 5,
                            ),
                            // ======= && ======= //

                            Text(
                              "You have successfully cancelled your appointment with Dr, Emily Walker.",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ======= && ======= //

                const SizedBox(
                  height: 30,
                ),

                // ======= && ======= //

                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "images/icons/calendar-edit.png",
                          width: 30,
                        ),
                      ),

                      // ======= && ======= //
                      const SizedBox(
                        width: 20,
                      ),
                      // ======= && ======= //

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Scheduled Changed",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("8h",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey[700])),
                              ],
                            ),

                            // ======= && ======= //
                            const SizedBox(
                              height: 5,
                            ),
                            // ======= && ======= //

                            Text(
                              "You have successfully cancelled your appointment with Dr, Jesica Turner.",
                              style: TextStyle(
                                  // height: 1.7,
                                  fontSize: 16,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ======= && ======= //
                const SizedBox(
                  height: 30,
                ),
                // ======= && ======= //

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "YESTERDAY",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Mark all as read",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),

                // ======= && ======= //

                const SizedBox(
                  height: 30,
                ),

                // ======= && ======= //

                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          "images/icons/calendar-tick.png",
                          width: 30,
                        ),
                      ),

                      // ======= && ======= //
                      const SizedBox(
                        width: 20,
                      ),
                      // ======= && ======= //

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Appointment success",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text("8h",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey[700])),
                              ],
                            ),

                            // ======= && ======= //
                            const SizedBox(
                              height: 5,
                            ),
                            // ======= && ======= //

                            Text(
                              "You have successfully cancelled your appointment with Dr, David Patel.",
                              style: TextStyle(
                                  // height: 1.7,
                                  fontSize: 16,
                                  color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
