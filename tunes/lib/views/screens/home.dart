import 'package:flutter/material.dart';
import 'package:tunes/models/tunes.dart';
import 'package:tunes/views/widgets/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TunesModel> tunes = [
    TunesModel(name: "One", sound: "assets/audios/note1.wav"),
    TunesModel(name: "Two", sound: "assets/audios/note2.wav"),
    TunesModel(name: "Three", sound: "assets/audios/note3.wav"),
    TunesModel(name: "Four", sound: "assets/audios/note4.wav"),
    TunesModel(name: "Five", sound: "assets/audios/note5.wav"),
    TunesModel(name: "Six", sound: "assets/audios/note6.wav"),
    TunesModel(name: "Seven", sound: "assets/audios/note7.wav"),
    TunesModel(name: "Eight", sound: "assets/audios/sasa.mp3"),
    TunesModel(name: "Nine", sound: "assets/audios/kordy.mp3"),
    TunesModel(name: "Ten", sound: "assets/audios/beka.mp3"),



  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Tunes App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            itemBuilder: (_, index) {
              TunesModel tune = tunes[index];
              return TuneList(
                tune: tune,
                number: index + 1,
                index: index,
              );
            },
            separatorBuilder: (_, index) {
              return index % 2 == 0
                  ? const Divider(
                      height: 10,
                      thickness: 5,
                    )
                  : const SizedBox(
                      height: 10,
                    );
            },
            itemCount: tunes.length),
      ),
    ));
  }
}
