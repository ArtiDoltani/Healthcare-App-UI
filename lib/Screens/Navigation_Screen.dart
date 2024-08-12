import 'package:flutter/material.dart';
import 'package:healthcare_app_ui/Screens/Categories.dart';
import 'package:healthcare_app_ui/Screens/Location.dart';
import 'package:healthcare_app_ui/Screens/SearchScreen.dart';

class Navigation_scrren extends StatefulWidget {
  const Navigation_scrren({super.key});

  @override
  State<Navigation_scrren> createState() => _Navigation_scrrenState();
}

class _Navigation_scrrenState extends State<Navigation_scrren> {
  int current_index = 0;
  List<Widget> myWidget = [
    const Categories(),
    SearchScreen(),
    const locationScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: myWidget[current_index],
        // Creating Bottom Navigation Bar

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.yellow,
            // fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            onTap: (index) {
              setState(() {
                current_index = index;
              });
            },
            currentIndex: current_index,
            backgroundColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  label: "Home", icon: Icon(Icons.home, size: 15)),
              // BottomNavigationBarItem(
              // label: "sar",
              // icon: Icon(Icons.star, size: 20,)),
              BottomNavigationBarItem(
                  label: "", icon: Icon(Icons.search, size: 20)),
              BottomNavigationBarItem(
                  label: "", icon: Icon(Icons.maps_home_work_sharp, size: 20)),
            ]),
      ),
    );
  }
}
