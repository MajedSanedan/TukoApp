import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko/Components/itemInfo.dart';
import 'package:tuko/Model/Item_Model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.model, required this.color});
  final Item_Model model;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffdf6dc),
            child: Image.asset(model.image!),
          ),
          Expanded(child: ItemInfo(model: model))
        ],
      ),
    );
  }
}
