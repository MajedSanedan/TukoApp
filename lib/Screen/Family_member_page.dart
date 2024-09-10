import 'package:flutter/material.dart';
import 'package:tuko/Components/Item.dart';
import 'package:tuko/Model/Item_Model.dart';

class Family_members_page extends StatelessWidget {
  const Family_members_page({super.key});
  final List<Item_Model> family_members = const [
    Item_Model(
        enName: "daughter",
        jaName: "Musume",
        image: "assets/images/Family_members/family_daughter.png",
        sound: "sounds/Family_members/daughter.wav"),
    Item_Model(
        enName: "father",
        jaName: "Otōsan",
        image: "assets/images/Family_members/family_father.png",
        sound: "sounds/Family_members/father.wav"),
    Item_Model(
        enName: "grandfather",
        jaName: "Ojiisan",
        image: "assets/images/Family_members/family_grandfather.png",
        sound: "sounds/Family_members/grand father.wav"),
    Item_Model(
        enName: "grandmother",
        jaName: "Obaasan",
        image: "assets/images/Family_members/family_grandmother.png",
        sound: "sounds/Family_members/grand mother.wav"),
    Item_Model(
        enName: "mother",
        jaName: "Okāsan",
        image: "assets/images/Family_members/family_mother.png",
        sound: "sounds/Family_members/mother.wav"),
    Item_Model(
        enName: "older brother",
        jaName: "Oniisan",
        image: "assets/images/Family_members/family_older_brother.png",
        sound: "sounds/Family_members/older bother.wav"),
    Item_Model(
        enName: "older sister",
        jaName: "Oneesan ",
        image: "assets/images/Family_members/family_older_sister.png",
        sound: "sounds/Family_members/older sister.wav"),
    Item_Model(
        enName: "son",
        jaName: "Musuko",
        image: "assets/images/Family_members/family_son.png",
        sound: "sounds/Family_members/son.wav"),
    Item_Model(
        enName: "younger brother",
        jaName: "Otōto ",
        image: "assets/images/Family_members/family_younger_brother.png",
        sound: "sounds/Family_members/younger brohter.wav"),
    Item_Model(
        enName: "younger sister",
        jaName: "Imōto",
        image: "assets/images/Family_members/family_younger_sister.png",
        sound: "sounds/Family_members/younger sister.wav"),
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
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family_members.length,
        itemBuilder: (context, index) {
          return Item(
            model: family_members[index],
            color: const Color(0xff558b37),
          );
        },
      ),
    );
  }
}
