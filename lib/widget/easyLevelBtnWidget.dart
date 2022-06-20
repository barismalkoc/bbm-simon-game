import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EasyLevelBtnWidget extends StatefulWidget {
  const EasyLevelBtnWidget({Key? key}) : super(key: key);

  @override
  State<EasyLevelBtnWidget> createState() => _EasyLevelBtnWidgetState();
}

class _EasyLevelBtnWidgetState extends State<EasyLevelBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => {
         
        },
        child: const Text(
          "EASY",
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
