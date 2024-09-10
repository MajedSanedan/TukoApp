import 'package:flutter/material.dart';
import 'package:tuko/Components/itemInfo.dart';
import 'package:tuko/Model/Item_Model.dart';

class ItemPhrase extends StatelessWidget {
  const ItemPhrase({super.key, required this.phrase, required this.color});
  final Item_Model phrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: color,
      child: ItemInfo(model: phrase),
    );
  }
}
