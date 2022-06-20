import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumLevelBtnWidget extends StatefulWidget {
  const MediumLevelBtnWidget({Key? key}) : super(key: key);

  @override
  State<MediumLevelBtnWidget> createState() => _MediumLevelBtnWidgetState();
}

class _MediumLevelBtnWidgetState extends State<MediumLevelBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => {
        },
        child: const Text(
          "MEDIUM",
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
