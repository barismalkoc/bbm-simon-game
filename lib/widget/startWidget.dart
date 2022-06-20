import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  State<StartWidget> createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Let's Start",
      style: TextStyle(
        color: Colors.amberAccent,
        fontSize: 45,
        fontFamily: "Schyler",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
