import 'package:doctorapp/Favorites/FavoritesDoctors.dart';
import 'package:doctorapp/Favorites/FavoritesHospitals.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Favorites"),
          bottom: TabBar(
              indicatorColor: const Color(0xff1C2A3A),
              indicatorWeight: 2.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[500],
              labelStyle: const TextStyle(fontSize: 18),
              tabs: const [
                Tab(
                  child: Text("Doctors"),
                ),
                Tab(
                  child: Text("Hospitals"),
                ),
              ]),
        ),
        body: Container(
          child: const TabBarView(children: [
            favoritesDoctors(),
            FavoritesHospitals(),
          ]),
        ),
      ),
    );
  }
}
