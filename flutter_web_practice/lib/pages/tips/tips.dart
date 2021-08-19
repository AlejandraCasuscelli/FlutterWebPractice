import 'package:flutter/material.dart';
import 'package:flutter_web_practice/widgets/custom_text.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Tips",),
    );
  }
}