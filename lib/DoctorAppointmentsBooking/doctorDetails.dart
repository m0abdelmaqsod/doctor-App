import 'package:doctorapp/DoctorAppointmentsBooking/bookAppointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorDetails extends StatefulWidget {
  final data;
  const DoctorDetails({super.key, this.data});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Details"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            widget.data["image"],
                            height: 110,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // ====== &&  ====== //

                        // ====== &&  ====== //

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.data["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),

                                // ====== &&  ====== //

                                const SizedBox(
                                  height: 5,
                                ),

                                // ====== &&  ====== //

                                Container(
                                  width: 220,
                                  height: 0.5,
                                  color: const Color(0xff6B7280),
                                ),
                                // ====== &&  ====== //

                                const SizedBox(
                                  height: 5,
                                ),

                                // ====== &&  ====== //

                                Text(
                                  widget.data["Specialization"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.grey[600]),
                                ),

                                // ====== &&  ====== //

                                const SizedBox(
                                  height: 5,
                                ),

                                // ====== &&  ====== //

                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "images/icon SVG/Location.svg",
                                      color: const Color(0xFF50555F),
                                      width: 20,
                                    ),

                                    // ====== &&  ====== //

                                    const SizedBox(
                                      width: 5,
                                    ),

                                    // ====== &&  ====== //

                                    const SizedBox(
                                      height: 5,
                                    ),

                                    // ====== &&  ====== //

                                    Text(
                                      widget.data["location"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // ====== &&  ====== //

                const SizedBox(
                  height: 20,
                ),

                // ====== &&  ====== //

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ====== & 1 &  ====== //
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'images/icons/profile-2user.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            )),
                        Text(
                          widget.data['patients'],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "patients",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),

                    // ====== & 2 &  ====== //

                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'images/icons/medal.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            )),
                        Text(
                          widget.data['experience'],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "experience",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),

                    // ====== & 3 &  ====== //

                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'images/icons/Subtract.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.cover,
                            )),
                        Text(
                          widget.data["Rating"],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "rating",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),

                    // ====== & 4 &  ====== //

                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'images/icons/messages.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            )),
                        Text(
                          widget.data['reviewsCount'],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "reviews",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
                // ====== &&  ====== //

                const SizedBox(
                  height: 20,
                ),

                // ====== &&  ====== //

                const Text(
                  "About Me",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

                // ====== &&  ====== //

                const SizedBox(
                  height: 10,
                ),

                // ====== &&  ====== //
                Text(
                  widget.data['About'],
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),

                // ====== &&  ====== //

                const SizedBox(
                  height: 10,
                ),

                // ====== &&  ====== //
                const Text(
                  "Working Time",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

                // ====== &&  ====== //

                const SizedBox(
                  height: 10,
                ),

                // ====== &&  ====== //
                Text(
                  widget.data['Working Time'],
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),

                // ====== &&  ====== //

                const SizedBox(
                  height: 20,
                ),

                // ====== &&  ====== //

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Reviews",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      child: Text(
                        "See All",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    )
                  ],
                ),
                // ====== &&  ====== //

                const SizedBox(
                  height: 20,
                ),

                // ====== &&  ====== //

                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "images/image Doctor/image reviews.png",
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Emily Anderson",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          // ====== &&  ====== //
                          const SizedBox(height: 5),
                          // ====== &&  ====== //
                          Row(
                            children: [
                              const Text(
                                "5.0",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),

                              // ====== &&  ====== //
                              const SizedBox(width: 10),
                              // ====== &&  ====== //

                              SvgPicture.asset('images/icon SVG/star1.svg',
                                  width: 16),
                              SvgPicture.asset('images/icon SVG/star1.svg',
                                  width: 16),
                              SvgPicture.asset('images/icon SVG/star1.svg',
                                  width: 16),
                              SvgPicture.asset('images/icon SVG/star1.svg',
                                  width: 16),
                              SvgPicture.asset('images/icon SVG/star1.svg',
                                  width: 16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // ====== &&  ====== //
                const SizedBox(height: 10),
                // ====== &&  ====== //

                Text(
                  "Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care.",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),

                // ====== &&  ====== //
                const SizedBox(height: 20),
                // ====== &&  ====== //

                // ====== &&  ====== //

                // ====== &&  ====== //
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade400))),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1C2A3A),
              minimumSize: const Size(double.infinity, 60)),
          // ====== && ======= //
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => const BookAppointment(),
            // ));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookAppointment()),
            );
          },
          child: const Text(
            "Book Appointment",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
