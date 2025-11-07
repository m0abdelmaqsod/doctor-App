import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class favoritesDoctors extends StatefulWidget {
  const favoritesDoctors({super.key});

  @override
  State<favoritesDoctors> createState() => _favoritesDoctorsState();
}

class _favoritesDoctorsState extends State<favoritesDoctors> {
  List MedicalCenters = [
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

// ===== Icon Botton Heart ===== //
  bool _ActiveIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ...List.generate(
                  MedicalCenters.length,
                  (i) {
                    final item = MedicalCenters[i];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        color: Colors.white,
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                child: Image.asset(
                                  item['image'],
                                  width: 110,
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              // ======== && ======== //

                              // ======== && ======== //
                              const SizedBox(
                                width: 10,
                              ),
                              // ======== && ======== //

                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              item['name'],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18),
                                            ),
                                            Container(
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _ActiveIcon = !_ActiveIcon;
                                                  });
                                                },
                                                child: _ActiveIcon
                                                    ? SvgPicture.asset(
                                                        "images/icon SVG/heart.svg",
                                                        color: const Color(
                                                            0xFF82AABD),
                                                        width: 20,
                                                      )
                                                    : SvgPicture.asset(
                                                        "images/icon SVG/heartOutlin.svg",
                                                        color: Colors.black,
                                                        width: 20,
                                                      ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // ======== && ======== //
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      // ======== && ======== //

                                      Container(
                                        height: 0.5,
                                        color: const Color(0xff6B7280),
                                      ),

                                      // ======== && ======== //
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      // ======== && ======== //

                                      Text(
                                        item["Specialization"],
                                        // "Specialization",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.grey[800]),
                                      ),

                                      // ======== && ======== //
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      // ======== && ======== //

                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "images/icon SVG/Location.svg",
                                            color: const Color(0xFF50555F),
                                            width: 18,
                                          ),

                                          // ======== && ======== //
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          // ======== && ======== //

                                          // ======== && ======== //
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          // ======== && ======== //

                                          Text(
                                            item["location"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Colors.grey[700]),
                                          ),
                                        ],
                                      ),

                                      // ======== && ======== //
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      // ======== && ======== //

                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                "images/icon SVG/star1.svg",
                                                width: 20,
                                              ),

                                              // =======
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              // =======

                                              Text(
                                                item["Rating"],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),

                                          // =======
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // =======

                                          Container(
                                            height: 18,
                                            width: 1,
                                            color: Colors.grey[600],
                                          ),

                                          // =======
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // =======

                                          Row(
                                            children: [
                                              Text(
                                                item["reviewsCount"],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[600],
                                                ),
                                              ),

                                              // =======
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              // =======

                                              Text(
                                                'Reviews',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                          // =======

                                          // =======
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )

                              // ======== && ======== //
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // ======== && ======== //
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
