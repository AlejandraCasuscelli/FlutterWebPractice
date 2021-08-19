import 'package:flutter/material.dart';
import 'package:flutter_web_practice/widgets/custom_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Login",),
    );
  }
}