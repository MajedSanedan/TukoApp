import 'package:flutter/material.dart';
import 'package:tuko/Components/Item.dart';
import 'package:tuko/Model/Item_Model.dart';

class Numbers_page extends StatelessWidget {
  const Numbers_page({super.key});

  final List<Item_Model> Numbers = const [
    Item_Model(
        enName: "one",
        jaName: "ichi",
        image: "assets/images/Numbers/number_one.png",
        sound: "sounds/Naumbers/number_one_sound.mp3"),
    Item_Model(
        enName: "two",
        jaName: "ni",
        image: "assets/images/Numbers/number_two.png",
        sound: "sounds/Naumbers/number_two_sound.mp3"),
    Item_Model(
        enName: "three",
        jaName: "san",
        image: "assets/images/Numbers/number_three.png",
        sound: "sounds/Naumbers/number_three_sound.mp3"),
    Item_Model(
        enName: "four",
        jaName: "yon",
        image: "assets/images/Numbers/number_four.png",
        sound: "sounds/Naumbers/number_four_sound.mp3"),
    Item_Model(
        enName: "five",
        jaName: "go",
        image: "assets/images/Numbers/number_five.png",
        sound: "sounds/Naumbers/number_five_sound.mp3"),
    Item_Model(
        enName: "six",
        jaName: "roku",
        image: "assets/images/Numbers/number_six.png",
        sound: "sounds/Naumbers/number_six_sound.mp3"),
    Item_Model(
        enName: "seven",
        jaName: "shichi ",
        image: "assets/images/Numbers/number_seven.png",
        sound: "sounds/Naumbers/number_seven_sound.mp3"),
    Item_Model(
        enName: "eight",
        jaName: "hachi",
        image: "assets/images/Numbers/number_eight.png",
        sound: "sounds/Naumbers/number_eight_sound.mp3"),
    Item_Model(
        enName: "nine",
        jaName: "kyuu ",
        image: "assets/images/Numbers/number_nine.png",
        sound: "sounds/Naumbers/number_nine_sound.mp3"),
    Item_Model(
        enName: "ten",
        jaName: "juu",
        image: "assets/images/Numbers/number_ten.png",
        sound: "sounds/Naumbers/number_ten_sound.mp3"),
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
            "Numbers",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: Numbers.length,
          itemBuilder: (context, index) {
            return Item(
              model: Numbers[index],
              color: const Color(0xffef9235),
            );
          },
        ));
  }
//Function to get list number by for loop

  // List<Widget> getList(List<Item_Model> numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(model: numbers[i]));
  //   }
  //   return itemList;
  // }
}
