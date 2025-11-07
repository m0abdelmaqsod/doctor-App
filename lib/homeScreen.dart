import 'package:doctorapp/profileUser/Notification.dart';
import 'package:doctorapp/searchAllDoctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  // bool isSelected = _selectedIndex == index;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> itemList = ["Seattle, USA", " Female"];
  String? selectedValue;

  List categories = [
    {"image": "images/icons/Image (4).png", "name": "Dentistry"},
    {"image": "images/icons/Image (5).png", "name": "Cardiolo"},
    {"image": "images/icons/Image (6).png", "name": "Pulmono"},
    {"image": "images/icons/Image (7).png", "name": "General"},
    {"image": "images/icons/Image (8).png", "name": "Neurology"},
    {"image": "images/icons/Image (9).png", "name": "Gastroen"},
    {"image": "images/icons/Image (10).png", "name": "Laborato"},
    {"image": "images/icons/Image (11).png", "name": "Vaccinat"},
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.red,
              onPressed: () {
                _onItemTapped(0);
              },
              icon: SvgPicture.asset(
                'images/icon SVG/home.svg',
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(1);
              },
              icon: SvgPicture.asset(
                'images/icon SVG/Location.svg',
                color: const Color(0xFF666B74),
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(2);
              },
              icon: SvgPicture.asset(
                'images/icon SVG/Appointment.svg',
                color: const Color(0xFF666B74),
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(3);
              },
              icon: SvgPicture.asset(
                'images/icon SVG/Profile.svg',
                color: const Color(0xFF666B74),
                width: 30,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // location && Notifications
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xff6B7280), fontSize: 18),
                        ),

                        // =========

                        // =========

                        Row(
                          children: [
                            SvgPicture.asset(
                              'images/icon SVG/Location black.svg',
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            // ==========

                            // ==========
                            DropdownButton(
                              hint: const Text('Seattle, USA '),
                              value: selectedValue,
                              items: itemList
                                  .map((item) => DropdownMenuItem(
                                      value: item, child: Text(item)))
                                  .toList(),
                              onChanged: (value) {},
                              icon: const Icon(Icons.keyboard_arrow_down),
                              iconSize: 25,
                              iconEnabledColor: const Color(0xFF757B85),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              dropdownColor: const Color(0xFFF4F8FC),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ===========

                    // ======= Notifications ========= //
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Notifications(),
                        ));
                      },
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          // ===========
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffF3F4F6),
                            ),
                          ),
                          // ===========

                          // ===========
                          Container(
                            child: const Icon(
                              Icons.notification_important_rounded,
                              size: 35,
                              color: Color(0xFF525C69),
                            ),
                          ),
                          // ===========

                          // ===========
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xffEF0000)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // ========
                const SizedBox(
                  height: 10,
                ),
                // ========

                // Search
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchAllDoctors(),
                    ));
                  },
                  child: Card(
                      color: const Color(0xFFE1E2E4),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                "images/icon SVG/search-normal.svg",
                                color: Colors.grey[800]),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Search Doctor.....",
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),

                // ========
                const SizedBox(
                  height: 10,
                ),
                // ========

                //Banner
                Container(
                  child: Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: [
                          SizedBox(
                            // width: 370,
                            width: 350,
                            child: Image.asset(
                              "images/Image3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          // ===========

                          // ===========
                          const SizedBox(
                            width: 240,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    "Looking for Specialist Doctors?",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),

                                  // ==========
                                  SizedBox(
                                    height: 5,
                                  ),
                                  // ==========

                                  Text(
                                    "Schedule an appointment with our top doctors.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                // ========
                const SizedBox(
                  height: 10,
                ),
                // ========

                // Categories
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          MaterialButton(
                              child: const Text(
                                "See All",
                                style: TextStyle(
                                    color: Color(0xff6B7280), fontSize: 18),
                              ),
                              onPressed: () {})
                        ],
                      ),

                      // ==========
                      const SizedBox(
                        height: 10,
                      ),
                      // ==========

                      // ==========
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 100,
                        ),
                        itemCount: categories.length,
                        itemBuilder: (context, i) {
                          return Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  categories[i]['image'],
                                  width: 70,
                                ),

                                // =========

                                const SizedBox(
                                  height: 5,
                                ),

                                // =========

                                Text(
                                  categories[i]['name'],
                                  style: const TextStyle(
                                      // fontSize: 16,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                // ==========
                const SizedBox(
                  height: 10,
                ),
                // ==========

                // Nearby Medical Centers
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Nearby Medical Centers",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          MaterialButton(
                              child: const Text(
                                "See All",
                                style: TextStyle(
                                    color: Color(0xff6B7280), fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchAllDoctors()));
                              })
                        ],
                      ),

                      // ==========
                      const SizedBox(
                        height: 10,
                      ),
                      // ==========

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children:
                                List.generate(MedicalCenters.length, (index) {
                          final item = MedicalCenters[index];
                          return Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: 300,
                            child: InkWell(
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => DoctorDetails(
                                //           data: index,
                                //         )));
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              topRight: Radius.circular(12)),
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
                                                MainAxisAlignment.spaceBetween,
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
                                                      "${item['routing']} km/${item['routingTime']} min",
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFF50555F),
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
                                                          color:
                                                              Color(0xFF50555F),
                                                          fontSize: 16),
                                                    )
                                                  ],
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
                            ),
                          );
                        })),
                      ),
                    ],
                  ),
                ),
                // ========
              ],
            ),
          )
        ],
      ),
    );
  }
}
