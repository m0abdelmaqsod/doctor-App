import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesHospitals extends StatefulWidget {
  const FavoritesHospitals({super.key});

  @override
  State<FavoritesHospitals> createState() => _FavoritesHospitalsState();
}

class _FavoritesHospitalsState extends State<FavoritesHospitals> {
  List MedicalCenters = [
    {
      'image': 'images/Image13.png',
      'name': 'Sunrise Health Clinic',
      'location': '123 Oak Street, CA 98765',
      'reviews': '5.0',
      'reviewsCount': '58',
      'routing': '2.5',
      'routingTime': '40',
      "type": 'Hospital',
    },
    {
      'image': 'images/Image14.png',
      'name': 'Golden Cardiology Center',
      'location': '555 Bridge Street, Golden Gate',
      'reviews': '4.9',
      'reviewsCount': '108',
      'routing': '2.5',
      'routingTime': '40',
      "type": 'Clinic',
    },
    {
      'image': 'images/Image.png',
      'name': 'Orthopedic Surgery Center',
      'location': '555 Bridge Street, Golden Gate',
      'reviews': '3.5',
      'reviewsCount': '58',
      'routing': '2.5',
      'routingTime': '40',
      "type": 'Clinic',
    },
  ];

  bool _heart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ...List.generate(
                  MedicalCenters.length,
                  (i) {
                    final item = MedicalCenters[i];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Image.asset(
                                    item["image"],
                                    width: double.infinity,
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                // ======== && ======== //

                                Positioned(
                                  top: 15,
                                  right: 15,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xAE1F2A37),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _heart = !_heart;
                                        });
                                      },
                                      child: _heart
                                          ? SvgPicture.asset(
                                              "images/icon SVG/heart.svg",
                                              width: 20,
                                            )
                                          : const Text(
                                              "false",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                    ),
                                  ),
                                )
                              ],
                            ),

                            // ======== && ======== //

                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),

                                  // ======== && ======== //
                                  const SizedBox(height: 5),
                                  // ======== && ======== //

                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'images/icon SVG/Location.svg',
                                        color: const Color(0xFF50555F),
                                      ),

                                      // =======
                                      const SizedBox(width: 5),
                                      // =======
                                      Text(item['location'],
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF50555F)))
                                    ],
                                  ),

                                  // ======== && ======== //
                                  const SizedBox(height: 5),
                                  // ======== && ======== //

                                  Row(
                                    children: [
                                      Text(
                                        item['reviews'],
                                        style: const TextStyle(fontSize: 18),
                                      ),

                                      // =======
                                      const SizedBox(width: 5),
                                      // =======
                                      SvgPicture.asset(
                                          'images/icon SVG/star1.svg',
                                          width: 16),
                                      SvgPicture.asset(
                                          'images/icon SVG/star1.svg',
                                          width: 16),
                                      SvgPicture.asset(
                                          'images/icon SVG/star1.svg',
                                          width: 16),
                                      SvgPicture.asset(
                                          'images/icon SVG/star1.svg',
                                          width: 16),
                                      SvgPicture.asset(
                                          'images/icon SVG/star1.svg',
                                          width: 16),

                                      // =======
                                      const SizedBox(width: 5),
                                      // =======

                                      Text(
                                        "(${item['reviewsCount']} Reviews)",
                                        style: const TextStyle(
                                            color: Color(0xFF50555F),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),

                                  // ======== && ======== //
                                  const SizedBox(height: 10),
                                  // ======== && ======== //

                                  Container(
                                    height: 0.5,
                                    color: const Color(0xff6B7280),
                                  ),

                                  // ======== && ======== //
                                  const SizedBox(height: 10),
                                  // ======== && ======== //

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'images/icon SVG/routing.svg',
                                              color: const Color(0xFF50555F),
                                              width: 18,
                                            ),

                                            // ======== && ======== //
                                            const SizedBox(width: 5),
                                            // ======== && ======== //

                                            Text(
                                              "${item['routing']} km/ ${item['routingTime']} min",
                                              style: const TextStyle(
                                                  color: Color(0xFF50555F),
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'images/icon SVG/hospital.svg',
                                              color: const Color(0xFF50555F),
                                              width: 18,
                                            ),

                                            // ======== && ======== //
                                            const SizedBox(width: 5),
                                            // ======== && ======== //

                                            Text(
                                              item['type'],
                                              style: const TextStyle(
                                                  color: Color(0xFF50555F),
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
