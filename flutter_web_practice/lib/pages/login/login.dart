import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_practice/constants/firebase.dart';
import 'package:flutter_web_practice/constants/style.dart';
import 'package:flutter_web_practice/routing/routes.dart';
import 'package:flutter_web_practice/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Row(
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Me.Up backend admin panel.",
                    color: lightGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
               SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  _signInWithEmailAndPassword();
                  // Get.offAllNamed(rootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(color: active, 
                  borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: "Login",
                    color: Colors.white,
                  ),
                ),
              ),

               SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void _signInWithEmailAndPassword() async {

try {

  final User? user = (await auth.signInWithEmailAndPassword(
    email: "pepeelgrillo@globons.com",
    password: "alegria",
  )).user;
  
  if (user != null) {
    print("existeeeee");
    Get.offAllNamed(rootRoute);
    // setState(() {
    //   _success = true;
    //   _userEmail = user.email;
    // });
  } else {
    print("fail");
    // setState(() {
    //   _success = false;
    // });
  }
  } on FirebaseAuthException catch  (e) {
  print('Failed with error code: ${e.code}');
  print(e.message);
  print(e);
}
}