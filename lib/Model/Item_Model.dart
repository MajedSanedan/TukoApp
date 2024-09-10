import 'package:audioplayers/audioplayers.dart';

class Item_Model {
  final String? image;
  final String enName;
  final String jaName;
  final String sound;

  const Item_Model(
      {this.image,
      required this.enName,
      required this.jaName,
      required this.sound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
