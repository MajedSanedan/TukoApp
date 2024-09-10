import 'package:flutter/material.dart';
import 'package:tuko/Components/category.dart';
import 'package:tuko/Screen/Color_page.dart';
import 'package:tuko/Screen/Family_member_page.dart';
import 'package:tuko/Screen/Numbers_page.dart';
import 'package:tuko/Screen/Phrases_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdf6da),
      appBar: AppBar(
        title: const Text(
          "TukoApp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322b),
      ),
      body: Column(
        children: [
          Categroy(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numbers_page();
              }));
            },
            text: "Numbers",
            color: const Color(0xffef9235),
          ),
          Categroy(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Family_members_page();
              }));
            },
            text: "Family Members",
            color: const Color(0xff558b37),
          ),
          Categroy(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Color_page();
            })),
            text: "Colors",
            color: const Color(0xff78359f),
          ),
          Categroy(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Phrases_page();
              }));
            },
            text: "Phrases",
            color: const Color(0xff4fadc7),
          ),
        ],
      ),
    );
  }
}
