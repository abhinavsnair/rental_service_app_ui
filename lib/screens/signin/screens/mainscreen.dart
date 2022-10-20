// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rental_service_app_ui/screens/signin/screens/collection.dart';
import 'package:rental_service_app_ui/screens/signin/screens/home.dart';
import 'package:rental_service_app_ui/screens/signin/screens/profile.dart';
import 'package:rental_service_app_ui/screens/signin/screens/saved.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

List screens = [HomeView(), CollectionView(), SavedView(), profileView()];

class _HomepageState extends State<Homepage> {
  int currentindex = 0;

  onchanged(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        selectedFontSize: 11,
          currentIndex: currentindex,
          onTap: onchanged,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: 'Collection'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: 'Profile'),
          ]),
    );
  }
}
