import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  List myBookingsUpcoming = [
    {
      'image': 'images/image Doctor/Image (1).png',
      'name': 'Dr. David Patel',
      "Specialization": 'Cardiologist',
      'location': 'Cardiology Center, USA',
      'Rating': '5',
      'reviewsCount': '1,872',
      'patients': '2,000+',
      'experience': '10+',
      'About':
          'Dr. David Patel, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA.',
      'Working Time': 'Monday-Friday, 08.00 AM-18.00 pM',
    },
    {
      'image': 'images/image Doctor/Image (2).png',
      'name': 'Dr. Jessica Turner',
      "Specialization": 'Gynecologist',
      'location': "Women's Clinic,Seatle,USA",
      'Rating': '4.9',
      'reviewsCount': '127',
      'patients': '1,000+',
      'experience': '5+',
      'About':
          'Dr. Jessica Turner, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA.',
      'Working Time': 'Monday-Friday, 08.00 AM-18.00 pM',
    },
    {
      'image': 'images/image Doctor/Image (3).png',
      'name': 'Dr. Michael Johnson',
      "Specialization": 'Orthopedic Surgery',
      'location': "Maple Associates, NY,USA",
      'Rating': '4.7',
      'reviewsCount': '5,223',
      'patients': '500+',
      'experience': '3+',
      'About':
          'Dr. Michael Johnson, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA.',
      'Working Time': 'Monday-Friday, 08.00 AM-18.00 pM',
    },
    {
      'image': 'images/image Doctor/Image (4).png',
      'name': 'Dr. Emily Walker',
      "Specialization": 'Pediatrics',
      'location': "Serenity Pediatrics Clinic",
      'Rating': '5',
      'reviewsCount': '405',
      'patients': '5,000+',
      'experience': '15+',
      'About':
          'Dr. Emily Walker, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA.',
      'Working Time': 'Monday-Friday, 08.00 AM-18.00 pM',
    },
    {
      'image': 'images/image Doctor/Image.png',
      'name': 'Dr. Emma Green',
      "Specialization": 'Gynecologist',
      'location': "Bernard Clinic",
      'Rating': '4',
      'reviewsCount': '405',
      'patients': '800+',
      'experience': '7+',
      'About':
          'Dr. Emma Green, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA.',
      'Working Time': 'Monday-Friday, 08.00 AM-18.00 pM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // ========= all data doctor ========= //

              myBookingsUpcoming.isEmpty
                  ? const Text(
                      "No Upcoming Bookings",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          myBookingsUpcoming.length,
                          (i) {
                            final item = myBookingsUpcoming[i];
                            return Card(
                              margin: const EdgeInsets.only(bottom: 20),
                              color: Colors.white,
                              elevation: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "May 22, 2023 - 10.00 AM",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),

                                    // ========= && ========= //
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // ========= && ========= //

                                    // ========= && ========= //
                                    Container(
                                      // width: 220,
                                      height: 1,
                                      color: Colors.grey[400],
                                    ),
                                    // ========= && ========= //

                                    // ========= && ========= //
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // ========= && ========= //

                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadiusGeometry.circular(12),
                                          child: Image.asset(
                                            item["image"],
                                            width: 110,
                                            height: 110,
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                        // ========= && ========= //
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        // ========= && ========= //

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['name'],
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            // ========= && ========= //
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            // ========= && ========= //
                                            Text(
                                              item["Specialization"],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[800],
                                                  fontWeight: FontWeight.w600),
                                            ),

                                            // ========= && ========= //
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            // ========= && ========= //

                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/icon SVG/Location.svg",
                                                  color:
                                                      const Color(0xFF50555F),
                                                  width: 18,
                                                ),

                                                // ========= && ========= //
                                                const SizedBox(
                                                  width: 5,
                                                ),

                                                // ========= && ========= //

                                                Text(
                                                  item['location'],
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.grey[700]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    // ========= && ========= //
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // ========= && ========= //

                                    // ========= && ========= //
                                    Container(
                                      // width: 220,
                                      height: 1,
                                      color: Colors.grey[400],
                                    ),
                                    // ========= && ========= //

                                    // ========= && ========= //
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // ========= && ========= //

                                    // ========= button Cancel and Reschedule ========= //
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(155, 40),
                                            backgroundColor:
                                                const Color(0xffE5E7EB),
                                          ),
                                          child: const Text(
                                            "Cancel",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black),
                                          ),
                                        ),

                                        // ========= && ========= //

                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(155, 40),
                                            backgroundColor:
                                                const Color(0xff1C2A3A),
                                          ),
                                          child: const Text(
                                            "Reschedule",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )

              // ========= && ========= //

              // ========= && ========= //
            ],
          ),
        )
      ],
    ));
  }
}
