import 'package:flutter/material.dart';
import 'package:tunes/models/tunes.dart';

enum Mode { played, stopped }

class TuneList extends StatefulWidget {
  final TunesModel tune;
  final int number;
  final int index;
  const TuneList(
      {super.key,
      required this.tune,
      required this.number,
      required this.index});

  @override
  State<TuneList> createState() => _TuneListState();
}

class _TuneListState extends State<TuneList> {
  Mode mode = Mode.stopped;
  static TunesModel? currentlyPlayingTune;
  void toggleMode() {
    if (mode == Mode.played) {
      widget.tune.stopSound();
      setState(() {
        mode = Mode.stopped;
      });
    } else {
      if (currentlyPlayingTune != null && currentlyPlayingTune != widget.tune) {
        currentlyPlayingTune!.stopSound();
      }
      widget.tune.playsound();
      setState(() {
        mode = Mode.played;
        currentlyPlayingTune = widget.tune;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      tileColor: Colors.blue,
      title: Text(widget.tune.name.toString()),
      subtitle: Text(widget.tune.name.toString()),
      trailing: InkWell(
          onTap: () {
            toggleMode();
          },
          child: CircleAvatar(
            child: Icon(
              mode == Mode.played ? Icons.stop : Icons.play_arrow,
              color: Colors.black,
            ),
          )),
      leading: CircleAvatar(
        radius: 30,
        child: Text(widget.number.toString()),
      ),
    );
  }
}
