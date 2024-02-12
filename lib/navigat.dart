import 'package:flutter/material.dart';
import 'package:youtube/home.dart';
import 'package:youtube/zomato.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int currentindex = 0;
  final page = [
    hom(),
    zoma(),
  ];
  void krish (index)
  {
    setState(() {
      currentindex= (index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      page[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood_rounded),label: "Zomato"),
          ],
        currentIndex: currentindex,
        onTap: krish,
        ),




    );
  }
}
