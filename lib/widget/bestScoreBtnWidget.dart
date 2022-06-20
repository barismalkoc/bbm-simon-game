import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSCoreBtnWidget extends StatefulWidget {
  const BestSCoreBtnWidget({Key? key}) : super(key: key);

  @override
  State<BestSCoreBtnWidget> createState() => _BestSCoreBtnWidgetState();
}

class _BestSCoreBtnWidgetState extends State<BestSCoreBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          "BEST SCORE",
          style: TextStyle(
              letterSpacing: 5,
              color: Colors.amberAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
