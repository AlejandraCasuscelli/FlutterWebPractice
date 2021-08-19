import 'package:flutter/material.dart';
import 'package:flutter_web_practice/widgets/custom_text.dart';

class PreguntasHabitosPage extends StatelessWidget {
  const PreguntasHabitosPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Preguntas Habitos",),
    );
  }
}