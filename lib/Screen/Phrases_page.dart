import 'package:flutter/material.dart';
import 'package:tuko/Components/phraseItem.dart';
import 'package:tuko/Model/Item_Model.dart';

class Phrases_page extends StatelessWidget {
  const Phrases_page({super.key});
  final List<Item_Model> Phrases = const [
    Item_Model(
      enName: "are you coming",
      jaName: "Kimasu ka",
      sound: "sounds/Phrases/are_you_coming.wav",
    ),
    Item_Model(
      enName: "dont forget to subscribe",
      jaName: "Kōdoku suru koto o wasurenaide kudasai",
      sound: "sounds/Phrases/dont_forget_to_subscribe.wav",
    ),
    Item_Model(
      enName: "how are you feeling",
      jaName: "Go kibun wa ikagadesu ka.",
      sound: "sounds/Phrases/how_are_you_feeling.wav",
    ),
    Item_Model(
      enName: "i love anime",
      jaName: "Watashi wa anime ga daisukidesu",
      sound: "sounds/Phrases/i_love_anime.wav",
    ),
    Item_Model(
      enName: "i love programming",
      jaName: "Watashi wa puroguramingu ga daisukidesu",
      sound: "sounds/Phrases/i_love_programming.wav",
    ),
    Item_Model(
      enName: "programming is easy",
      jaName: "Puroguramingu wa kantandesu",
      sound: "sounds/Phrases/programming_is_easy.wav",
    ),
    Item_Model(
      enName: "what is your name",
      jaName: "Anata no namae wa nandesuka",
      sound: "sounds/Phrases/what_is_your_name.wav",
    ),
    Item_Model(
      enName: "where are you going",
      jaName: "Doko ni iku no",
      sound: "sounds/Phrases/where_are_you_going.wav",
    ),
    Item_Model(
      enName: "yes i'm comming",
      jaName: "Hai, ikimasu",
      sound: "sounds/Phrases/yes_im_coming.wav",
    ),
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
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
          itemCount: Phrases.length,
          itemBuilder: (context, index) {
            return ItemPhrase(
              phrase: Phrases[index],
              color: const Color(0xff4fadc7),
            );
          }),
    );
  }
}
