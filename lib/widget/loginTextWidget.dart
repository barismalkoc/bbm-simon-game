import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginTextWidget extends StatefulWidget {
  const LoginTextWidget({Key? key}) : super(key: key);

  @override
  State<LoginTextWidget> createState() => _LoginTextWidgetState();
}

class _LoginTextWidgetState extends State<LoginTextWidget> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Hey, Simon Says\nWelcome Back',
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 25,
          fontFamily: "Schyler",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
