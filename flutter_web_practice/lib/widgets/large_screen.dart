import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/style.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child: Container(
            color: light,
          )),
          Expanded(
            flex: 5,
            child: Container(
            color: Colors.blue,
          ))
        ],
      );
  }
}