import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HardLevelBtnWidget extends StatefulWidget {
  const HardLevelBtnWidget({Key? key}) : super(key: key);

  @override
  State<HardLevelBtnWidget> createState() => _HardLevelBtnWidgetState();
}

class _HardLevelBtnWidgetState extends State<HardLevelBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          "HARD",
          style: TextStyle(
              letterSpacing: 5,
              color: Colors.amberAccent,
              fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
