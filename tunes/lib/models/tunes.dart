import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TunesModel {
  String? sound;
  String? name;
  final AudioPlayer player = AudioPlayer(); // Initialize player

  TunesModel({required this.name, required this.sound});

  void playsound() async {
    if (sound != null && sound!.isNotEmpty) {
      try {
        await player.setAsset(sound!); // Set the audio asset
        player.play(); // Start playing
      } catch (e) {
        debugPrint("Error playing sound: $e");
      }
    } else {
      debugPrint("Sound path is invalid");
    }
  }

  void stopSound() async {
    await player.stop();
  }
}
