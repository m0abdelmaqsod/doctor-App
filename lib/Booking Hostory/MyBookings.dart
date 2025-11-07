import 'package:doctorapp/Booking%20Hostory/Canceled.dart';
import 'package:doctorapp/Booking%20Hostory/Completed.dart';
import 'package:doctorapp/Booking%20Hostory/Upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  int _selectedIndex = 3;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(2);
                },
                icon: SvgPicture.asset(
                  'images/icon SVG/Appointment.svg',
                  // colorBlendMode: BlendMode.color,
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(3);
                },
                icon: SvgPicture.asset(
                  'images/icon SVG/Profile.svg',
                  color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                  width: 30,
                ),
              ),
            ],
          ),
        ),

        // ========= && ========= //

        appBar: AppBar(
          title: const Text(
            "My Bookings",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          bottom: TabBar(
              indicatorColor: const Color(0xff1C2A3A),
              indicatorWeight: 2.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[500],
              labelStyle: const TextStyle(fontSize: 18),
              tabs: const [
                Tab(
                  child: Text("Upcoming"),
                ),
                Tab(
                  child: Text("Completed"),
                ),
                Tab(
                  child: Text("Canceled"),
                ),
              ]),
        ),
        body: Container(
          child: const TabBarView(children: [
            Upcoming(),
            Completed(),
            Canceled(),
          ]),
        ),
      ),
    );
  }
}
