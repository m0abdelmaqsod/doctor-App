import 'package:doctorapp/DoctorAppointmentsBooking/doctorDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAllDoctors extends StatefulWidget {
  const SearchAllDoctors({super.key});

  @override
  State<SearchAllDoctors> createState() => _SearchAllDoctorsState();
}

class _SearchAllDoctorsState extends State<SearchAllDoctors> {
  // ===== list Data doctor API ===== //
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

  // ===== Filter Data from Highest Rating To Lowest rating ===== //
  List<String> filterRating = [
    "Default",
    "Highest rating",
    "Lowest rating",
  ];

  String? selectedValue;

  List filterList = [];

  @override
  void initState() {
    filterList = MedicalCenters;
    super.initState();
  }

  void _searchFunction(String keyword) {
    setState(() {
      filterList = MedicalCenters.where((MedicalCenter) {
        final Specialization =
            MedicalCenter["Specialization"].toString().toLowerCase();
        final input = keyword.toLowerCase();

        return Specialization.contains(input);
      }).toList();
    });
  }

  // ===== Filter Data from Highest Rating To Lowest rating ===== //
  void _highestRating() {
    setState(() {
      filterList = List.from(MedicalCenters);
      filterList.sort(
        (a, b) => b["Rating"].compareTo(a["Rating"]),
      );
    });
  }

  void _lowestRating() {
    setState(() {
      filterList = List.from(MedicalCenters);

      filterList.sort(
        (a, b) => a["Rating"].compareTo(b["Rating"]),
      );
    });
  }

// ===== Icon Botton Heart ===== //
  bool _ActiveIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "All Doctors",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Form(
                  child: TextField(
                    onChanged: _searchFunction,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF0EDED),
                        prefixIcon: Container(
                          width: 70,
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset(
                              'images/icon SVG/search-normal.svg'),
                        ),
                        hintText: "search Doctor...",
                        hintStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // filter doctors
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _searchFunction("");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "All",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),

                      // =====
                      const SizedBox(
                        width: 10,
                      ),
                      // =====

                      GestureDetector(
                        onTap: () {
                          _searchFunction("Cardiologist");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              // color: Colors.black,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Cardiologist",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      // =====
                      const SizedBox(
                        width: 10,
                      ),
                      // =====

                      GestureDetector(
                        onTap: () {
                          _searchFunction("Gynecologist");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              // color: Colors.black,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Gynecologist",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      // =====
                      const SizedBox(
                        width: 10,
                      ),
                      // =====

                      GestureDetector(
                        onTap: () {
                          _searchFunction("Pediatrics");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              // color: Colors.black,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Pediatrics",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      // =====
                      const SizedBox(
                        width: 10,
                      ),
                      // =====

                      GestureDetector(
                        onTap: () {
                          _searchFunction("Orthopedic Surgery");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              // color: Colors.black,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Orthopedic Surgery",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ========

                const SizedBox(
                  height: 20,
                ),

                // ========

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "532",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "founds",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ],
                    ),
                    DropdownButton(
                      underline: Container(),
                      dropdownColor: const Color(0xFFE9E9E9),
                      hint: const Text(
                        "Default ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      icon: SvgPicture.asset(
                        "images/icon SVG/arrowFilter.svg",
                        width: 18,
                      ),
                      iconEnabledColor: Colors.yellow,
                      value: selectedValue,
                      items: filterRating
                          .map((item) => DropdownMenuItem(
                              value: item,
                              child: Center(
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54,
                                  ),
                                ),
                              )))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;

                          value == "Highest rating"
                              ? _highestRating()
                              : value == "Lowest rating"
                                  ? _lowestRating()
                                  : _searchFunction("");
                        });
                      },
                    )
                  ],
                ),

                // ========

                // const SizedBox(
                //   height: 10,
                // ),

                // ========

                // All doctors Data
                SizedBox(
                  height: 540,
                  // height: 460,
                  child: ListView(
                    children: [
                      ...List.generate(
                        filterList.length,
                        (i) {
                          final    = filterList[i];
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DoctorDetails(
                                  data: item,
                                ),
                              ));
                            },
                            child: Card(
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 8),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    // =======

                                    // =======

                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        item["image"],
                                        height: 130,
                                        width: 90,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // =======

                                    // =======
                                    Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // =======

                                            // =======
                                            SizedBox(
                                              width: 220,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    item["name"],
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 18),
                                                  ),

                                                  // ======
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _ActiveIcon =
                                                            !_ActiveIcon;
                                                      });
                                                    },
                                                    child: _ActiveIcon
                                                        ? SvgPicture.asset(
                                                            "images/icon SVG/heart.svg",
                                                            color: Colors.red,
                                                            width: 20,
                                                          )
                                                        : SvgPicture.asset(
                                                            "images/icon SVG/heartOutlin.svg",
                                                            color: Colors.black,
                                                            width: 20,
                                                          ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // =======

                                            const SizedBox(
                                              height: 5,
                                            ),

                                            // =======
                                            Container(
                                              width: 220,
                                              height: 0.5,
                                              color: const Color(0xff6B7280),
                                            ),
                                            // =======

                                            const SizedBox(
                                              height: 5,
                                            ),
                                            // =======
                                            Text(
                                              item["Specialization"],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18,
                                                  color: Colors.grey[800]),
                                            ),

                                            // =======
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            // =======

                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/icon SVG/Location.svg",
                                                  color:
                                                      const Color(0xFF50555F),
                                                  width: 20,
                                                ),

                                                // =======
                                                const SizedBox(
                                                  width: 5,
                                                ),

                                                // =======

                                                const SizedBox(
                                                  height: 5,
                                                ),

                                                // =======

                                                Text(
                                                  item["location"],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                      color: Colors.grey[700]),
                                                ),
                                              ],
                                            ),
                                            // =======

                                            const SizedBox(
                                              height: 5,
                                            ),

                                            // =======
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                          // =======

                                          // =======
                                        ),
                                      ),
                                    ),
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
          )
        ],
      ),
    );
  }
}
