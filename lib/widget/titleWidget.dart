import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {

    return const Text(
      "SIMON GAME",
      style: TextStyle(
        color: Colors.amberAccent,
        fontSize: 35,
        fontFamily: "Schyler",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
