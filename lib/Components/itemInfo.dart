import 'package:flutter/material.dart';
import 'package:tuko/Model/Item_Model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.model});
  final Item_Model model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.jaName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                model.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              model.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 34,
            ),
          ),
        )
      ],
    );
  }
}
