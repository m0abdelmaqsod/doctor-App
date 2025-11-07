import 'package:doctorapp/searchAllDoctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({super.key});

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
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

  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // elevation: 50,
          // enableFeedback: true,
          fixedColor: Colors.green,
          currentIndex: SelectedIndex,
          onTap: (value) {
            setState(() {
              SelectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.factory, size: 30), label: ''),
          ]
          // items: [
          //   BottomNavigationBarItem(
          //     icon: SvgPicture.asset(
          //       'images/icon SVG/home.svg',
          //       height: 30,
          //     ),
          //     label: '',
          //   ),
          //   BottomNavigationBarItem(
          //       // backgroundColor: Colors.red,
          //       icon: SvgPicture.asset(
          //         'images/icon SVG/Location.svg',
          //         color: const Color(0xFF666B74),
          //         width: 30,
          //       ),
          //       label: ''),
          //   BottomNavigationBarItem(
          //       activeIcon: Container(
          //         width: 30,
          //         height: 30,
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(50),
          //         ),
          //       ),
          //       icon: SvgPicture.asset(
          //         'images/icon SVG/Appointment.svg',
          //         color: const Color(0xFF666B74),
          //         width: 30,
          //       ),
          //       label: ''),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset(
          //         'images/icon SVG/Profile.svg',
          //         color: const Color(0xFF666B74),
          //         width: 30,
          //       ),
          //       label: ''),
          // ],
          ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  // =========

                  // images Map
                  Container(
                    child: Image.asset(
                      "images/Map Image.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        // =========

                        // search Doctor, Hospital
                        // =========
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchAllDoctors(),
                            ));
                          },
                          child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "images/icon SVG/search-normal.svg",
                                        color: Colors.grey[600]),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Search Doctor, Hospital",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),

                        const SizedBox(
                          height: 50,
                        ),
                        // =========

                        // =========
                        SizedBox(
                            width: double.infinity,
                            height: 280,

                            // images location Doctor
                            // =====

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  // color: Colors.grey,
                                  width: 80,
                                  padding: const EdgeInsets.only(
                                      top: 60, bottom: 30),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'images/icon SVG/locationMapImage.svg',
                                            ),
                                            Positioned(
                                              top: 6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    border: Border.all(
                                                        width: 3,
                                                        color: Colors.white)),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "images/image Doctor/behnazsabaa_Smiling_Medical_Doctor__Style_of_Her_Film_with_Soft_7a04bd15-0067-406d-87f7-c3f253dbefb9.png",
                                                    width: 28.0,
                                                    height: 28.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'images/icon SVG/locationMapImage.svg',
                                          ),
                                          Positioned(
                                            top: 6,
                                            // left: 5,
                                            // right: 38,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      width: 3,
                                                      color: Colors.white)),
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "images/image Doctor/behnazsabaa_Portrait_of_Smiling_Medical_Doctor__Style_of_Her_Fi_ddb1908a-57d5-4181-84e3-01879fb9b694.png",
                                                  width: 28.0,
                                                  height: 28.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // ============

                                // ============
                                Container(
                                  // color: Colors.grey,
                                  width: 80,
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 50),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'images/icon SVG/locationMapImage.svg',
                                          ),
                                          Positioned(
                                            top: 6,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      width: 3,
                                                      color: Colors.white)),
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "images/image Doctor/behnazsabaa_Portrait_of_Smiling_Medical_Doctor__Style_of_Her_Fi_bd099184-b9f1-403f-bc9c-766786d0ee9b.png",
                                                  width: 28.0,
                                                  height: 28.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'images/icon SVG/locationMapImage.svg',
                                            ),
                                            Positioned(
                                              top: 6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    border: Border.all(
                                                        width: 3,
                                                        color: Colors.white)),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "images/image Doctor/behnazsabaa_Portrait_of_Smiling_male_Medical_Doctor__Style_of_H_1c086a49-54f7-49ae-83b7-e3470a13be23.png",
                                                    width: 28.0,
                                                    height: 28.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),

                        // ============

                        const SizedBox(
                          height: 20,
                        ),

                        // ============

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                            MedicalCenters.length,
                            (index) {
                              final item = MedicalCenters[index];
                              return Container(
                                margin: const EdgeInsets.only(right: 15),
                                width: 300,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(12),
                                                    topRight:
                                                        Radius.circular(12)),
                                            child: Image.asset(
                                              item['image'],
                                              width: 300,
                                              height: 170,
                                              fit: BoxFit.cover,
                                            ),
                                          ),

                                          // =========

                                          // =========

                                          Positioned(
                                            right: 15,
                                            top: 15,
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: const Color(0xAE1F2A37),
                                              ),

                                              // =========
                                              child: SvgPicture.asset(
                                                'images/icon SVG/heartOutlin.svg',
                                                width: 20,
                                              ),
                                              // =========
                                            ),
                                          )
                                        ],
                                      ),
                                      // =========

                                      // =========

                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              textAlign: TextAlign.left,
                                              item['name'],
                                              style: const TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),

                                            // =======
                                            const SizedBox(height: 5),
                                            // =======

                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'images/icon SVG/Location.svg',
                                                  color:
                                                      const Color(0xFF50555F),
                                                ),

                                                // =======
                                                const SizedBox(width: 5),
                                                // =======
                                                Text(item['location'],
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xFF50555F)))
                                              ],
                                            ),

                                            // =======
                                            const SizedBox(height: 5),
                                            // =======

                                            Row(
                                              children: [
                                                Text(
                                                  item['reviews'],
                                                  style: const TextStyle(
                                                      fontSize: 18),
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

                                            // =======
                                            const SizedBox(height: 10),
                                            // =======

                                            // =======
                                            Container(
                                              width: 300,
                                              height: 0.5,
                                              color: const Color(0xff6B7280),
                                            ),
                                            // =======

                                            // =======
                                            const SizedBox(height: 10),
                                            // =======

                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'images/icon SVG/routing.svg',
                                                        color: const Color(
                                                            0xFF50555F),
                                                        width: 18,
                                                      ),

                                                      // =======
                                                      const SizedBox(width: 5),
                                                      // =======

                                                      Text(
                                                        "${item['routing']} km/ ${item['routingTime']} min",
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xFF50555F),
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
                                                        color: const Color(
                                                            0xFF50555F),
                                                        width: 18,
                                                      ),

                                                      // =======
                                                      const SizedBox(width: 5),
                                                      // =======

                                                      Text(
                                                        item['type'],
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xFF50555F),
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
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
