import 'package:flutter/material.dart';
import 'package:tuko/Components/Item.dart';
import 'package:tuko/Model/Item_Model.dart';

class Color_page extends StatelessWidget {
  const Color_page({super.key});
  final List<Item_Model> colors = const [
    Item_Model(
        enName: "black",
        jaName: "kuro",
        image: "assets/images/Colors/color_black.png",
        sound: "sounds/Colors/black.wav"),
    Item_Model(
        enName: "brown",
        jaName: "chairo",
        image: "assets/images/Colors/color_brown.png",
        sound: "sounds/Colors/brown.wav"),
    Item_Model(
        enName: "dusty yellow",
        jaName: "kusunda kiiro",
        image: "assets/images/Colors/color_dusty_yellow.png",
        sound: "sounds/Colors/dusty yellow.wav"),
    Item_Model(
        enName: "gray",
        jaName: "haiiro",
        image: "assets/images/Colors/color_gray.png",
        sound: "sounds/Colors/gray.wav"),
    Item_Model(
        enName: "green",
        jaName: "midori",
        image: "assets/images/Colors/color_green.png",
        sound: "sounds/Colors/green.wav"),
    Item_Model(
        enName: "red",
        jaName: "aka",
        image: "assets/images/Colors/color_red.png",
        sound: "sounds/Colors/red.wav"),
    Item_Model(
        enName: "white",
        jaName: "shiro ",
        image: "assets/images/Colors/color_white.png",
        sound: "sounds/Colors/white.wav"),
    Item_Model(
        enName: "yellow",
        jaName: "ki",
        image: "assets/images/Colors/yellow.png",
        sound: "sounds/Colors/yellow.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(model: colors[index], color: const Color(0xff78359f));
        },
      ),
    );
  }
}
